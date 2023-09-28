import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratyush_s_healthapp/presentation/schedule_tab_container_page/models/schedule_tab_container_model.dart';
part 'schedule_tab_container_event.dart';
part 'schedule_tab_container_state.dart';

/// A bloc that manages the state of a ScheduleTabContainer according to the event that is dispatched to it.
class ScheduleTabContainerBloc
    extends Bloc<ScheduleTabContainerEvent, ScheduleTabContainerState> {
  ScheduleTabContainerBloc(ScheduleTabContainerState initialState)
      : super(initialState) {
    on<ScheduleTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScheduleTabContainerInitialEvent event,
    Emitter<ScheduleTabContainerState> emit,
  ) async {}
}
