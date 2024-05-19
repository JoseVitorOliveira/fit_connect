import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import for date formatting
import 'package:fit_connect/models/activity.dart';

class NewActivity extends StatefulWidget {
  const NewActivity({super.key, required this.onAddActivity});

  final Function(Activity) onAddActivity;

  @override
  State<NewActivity> createState() => _NewActivityState();
}

class _NewActivityState extends State<NewActivity> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _placeController = TextEditingController();
  DateTime? _selectedDate;
  TimeOfDay? _selectedStartTime;
  TimeOfDay? _selectedEndTime;

  Category _selectedCategory = Category.corrida;

  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year, now.month, now.day);
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: DateTime(now.year + 1),
    );
    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  void _presentTimePickerStart() async {
    final now = DateTime.now();
    final pickedStartTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(now),
      initialEntryMode: TimePickerEntryMode.dial,
    );

    if (pickedStartTime != null) {
      final selectedDateTime = DateTime(
        _selectedDate!.year,
        _selectedDate!.month,
        _selectedDate!.day,
        pickedStartTime.hour,
        pickedStartTime.minute,
      );

      if (selectedDateTime.isBefore(now)) {
        _showInvalidTimeDialog();
      } else {
        setState(() {
          _selectedStartTime = pickedStartTime;
        });
      }
    }
  }

  void _presentTimePickerEnd() async {
    if (_selectedStartTime == null) {
      _showInvalidTimeDialog();
      return;
    }

    final pickedEndTime = await showTimePicker(
      context: context,
      initialTime: _selectedStartTime!,
      initialEntryMode: TimePickerEntryMode.dial,
    );

    if (pickedEndTime != null) {
      if (pickedEndTime.hour < _selectedStartTime!.hour ||
          (pickedEndTime.hour == _selectedStartTime!.hour &&
              pickedEndTime.minute <= _selectedStartTime!.minute)) {
        _showInvalidTimeDialog();
      } else {
        setState(() {
          _selectedEndTime = pickedEndTime;
        });
      }
    }
  }

  void _showInvalidTimeDialog() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Hora inválida"),
        content: const Text(
            "A hora selecionada é inválida. Por favor, selecione uma hora válida."),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
            },
            child: const Text("Ok"),
          ),
        ],
      ),
    );
  }

  void _submitActivityData() {
    if (_formKey.currentState?.validate() ?? false) {
      widget.onAddActivity(
        Activity(
          name: _nameController.text,
          description: _descriptionController.text,
          place: _placeController.text,
          category: _selectedCategory,
          date: _selectedDate ?? DateTime.now(),
          startTime: _selectedStartTime!,
          endTime: _selectedEndTime!,
        ),
      );
      Navigator.pop(context);
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _placeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                maxLength: 50,
                decoration: InputDecoration(
                  labelText: "Nome",
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Por favor, insira um nome.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _descriptionController,
                maxLength: 100,
                decoration: InputDecoration(
                  labelText: "Descrição",
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Por favor, insira uma descrição.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _placeController,
                maxLength: 50,
                decoration: InputDecoration(
                  labelText: "Local",
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Por favor, insira um local.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DropdownButton<Category>(
                    value: _selectedCategory,
                    items: Category.values
                        .map(
                          (category) => DropdownMenuItem(
                            value: category,
                            child: Text(
                              category.name.toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        if (value != null) {
                          _selectedCategory = value;
                        }
                      });
                    },
                  ),
                  Row(
                    children: [
                      Text(
                          _selectedDate == null
                              ? "Escolhe uma data"
                              : DateFormat('dd/MM/yyyy').format(_selectedDate!),
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 18,
                                  )),
                      IconButton(
                        onPressed: _presentDatePicker,
                        icon: const Icon(Icons.calendar_today),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          _selectedStartTime == null
                              ? "Hora inicial"
                              : _selectedStartTime!.format(context),
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 18,
                                  )),
                      IconButton(
                        onPressed: _presentTimePickerStart,
                        icon: const Icon(Icons.access_time),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          _selectedEndTime == null
                              ? "Hora final"
                              : _selectedEndTime!.format(context),
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 18,
                                  )),
                      IconButton(
                        onPressed: _selectedStartTime != null
                            ? _presentTimePickerEnd
                            : null,
                        icon: const Icon(Icons.access_time),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Cancelar"),
                  ),
                  ElevatedButton(
                    onPressed: _submitActivityData,
                    child: const Text("Salvar"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
