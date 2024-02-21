part of '../agent_detail_page_part.dart';

List<Widget> agentDetailInfo({required AgentDetailData agentDetail}) => [
      SlideInLeft(
        child: AgentDetailInfoItem(
          title: 'agent_name'.tr,
          text: agentDetail.displayName ?? 'null',
          isRole: true,
          image: agentDetail.displayIcon ?? 'null',
        ),
      ),
      SlideInRight(
        child: AgentDetailInfoItem(
          title: 'description'.tr,
          text: agentDetail.description ?? 'null',
        ),
      ),
      SlideInLeft(
        child: AgentDetailInfoItem(
          title: 'role'.tr,
          text: agentDetail.role?.displayName ?? 'null',
          isRole: true,
          image: agentDetail.role?.displayIcon ?? '',
        ),
      ),
      SlideInRight(
        child: AgentDetailInfoItem(
          title: '${'role'.tr} ${'description'.tr}',
          text: agentDetail.role?.description ?? 'null',
        ),
      ),
    ];
