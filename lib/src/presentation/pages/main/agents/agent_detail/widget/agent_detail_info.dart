part of '../agent_detail_page_part.dart';

List<Widget> agentDetailInfo({required AgentDetailData agentDetail}) => [
      SlideInLeft(
        child: DetailPagesInfoItem(
          title: 'agent_name'.tr,
          text: agentDetail.displayName ?? 'null',
          isRole: true,
          image: agentDetail.displayIcon ?? 'null',
        ),
      ),
      SlideInRight(
        child: DetailPagesInfoItem(
          title: 'description'.tr,
          text: agentDetail.description ?? 'null',
        ),
      ),
      SlideInLeft(
        child: DetailPagesInfoItem(
          title: 'role'.tr,
          text: agentDetail.role?.displayName ?? 'null',
          isRole: true,
          image: agentDetail.role?.displayIcon ?? '',
        ),
      ),
      SlideInRight(
        child: DetailPagesInfoItem(
          title: '${'role'.tr} ${'description'.tr}',
          text: agentDetail.role?.description ?? 'null',
        ),
      ),
    ];
