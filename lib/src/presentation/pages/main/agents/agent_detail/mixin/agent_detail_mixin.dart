part of '../agent_detail_page_part.dart';

mixin AgentDetailMixin on State<AgentDetailPage> {
  late final AgentDetailBloc _bloc = context.read<AgentDetailBloc>();

  @override
  void initState() {
    _bloc.add(
      AgentDetailGetInfoEvent(uuid: widget.uuid),
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
