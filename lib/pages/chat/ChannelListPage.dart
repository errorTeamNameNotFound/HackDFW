
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

import 'ChannelPage.dart';

class ChannelListPage extends StatelessWidget {
  const ChannelListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: LowerNavigationBarWidget(),
      body: ChannelsBloc(
        child: ChannelListView(
          filter: Filter.in_(
            'members',
            [StreamChat.of(context).user!.id],
          ),
          sort: const [SortOption('last_message_at')],
          pagination: const PaginationParams(
            limit: 20,
          ),
          channelWidget: const ChannelPage(),
        ),
      ),
    );
  }
}