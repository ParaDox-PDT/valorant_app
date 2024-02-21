part of '../agent_detail_page_part.dart';

List<Widget> agentDetailAbilities({required AgentDetailData agentDetail}) =>
    List.generate(
      agentDetail.abilities?.length ?? 0,
      (index) => FlipInX(
        child: AgentDetailAbilitiesItem(
            displayName: agentDetail.abilities?[index].displayName ?? 'null',
            slot: agentDetail.abilities?[index].slot ?? 'null',
            icon: agentDetail.abilities?[index].displayIcon ?? 'null',
            description: agentDetail.abilities?[index].description ?? 'null'),
      ),
    );
