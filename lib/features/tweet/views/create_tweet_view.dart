import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_app/common/common.dart';
import 'package:twitter_app/features/auth/controller/auth_controller.dart';
import 'package:twitter_app/theme/pallete.dart';

class CreateTweetScreen extends ConsumerStatefulWidget {
  static route() => MaterialPageRoute(
        builder: (_) => const CreateTweetScreen(),
      );
  const CreateTweetScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateTweetScreenState();
}

class _CreateTweetScreenState extends ConsumerState<CreateTweetScreen> {
  @override
  Widget build(BuildContext context) {
    // final currentUser = ref.watch(currentUserDetailsProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.close,
            size: 30,
          ),
        ),
        actions: [
          RoundedSmallButton(
            onTap: () {},
            label: 'Tweet',
            backgroundColor: Pallete.blueColor,
            textColor: Pallete.whiteColor,
          ),
        ],
      ),
      body: ref.watch(currentUserDetailsProvider).when(
            data: (currentUser) {
              return currentUser == null
                  ? const Loader()
                  : SafeArea(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(currentUser.profilePic),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
            },
            error: (error, stackTrace) => ErrorPage(error: error.toString()),
            loading: () => const Loader(),
          ),
    );
  }
}
