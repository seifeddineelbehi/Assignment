import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelfield_test/core/util/palette.dart';
import 'package:pixelfield_test/core/util/text_styles.dart';
import 'package:pixelfield_test/core/widgets/icon_with_badge_widget.dart';
import 'package:pixelfield_test/core/widgets/loading_widget.dart';
import 'package:pixelfield_test/core/widgets/message_display_widget.dart';
import 'package:pixelfield_test/features/collection/presentation/bloc/collection_bloc.dart';
import 'package:pixelfield_test/features/collection/presentation/widget/bottle_card_widget.dart';
import 'package:pixelfield_test/generated/assets.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Palette.backgroundColor,
        child: RefreshIndicator(
          onRefresh: () => _onRefresh(context),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.sp),
              child: Column(
                children: [
                  SizedBox(height: 16.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("My collection",
                          style: AppTextStyles.ebGaramondLarge(
                              fontWeight: FontWeight.w500,
                              color: Palette.whiteColor)),
                      IconWithBadgeWidget(
                          icon: Assets.svgsBell, badgeActive: true),
                    ],
                  ),
                  SizedBox(height: 32.sp),
                  BlocBuilder<CollectionBloc, CollectionState>(
                      builder: (context, state) {
                    if (state is LoadingCollectionState) {
                      return const LoadingWidget();
                    } else if (state is LoadedCollectionState) {
                      return GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.bottles.length,
                        itemBuilder: (BuildContext context, int index) {
                          return BottleCardWidget(
                              bottleModel: state.bottles[index]);
                        },
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          mainAxisExtent: 320.sp,
                        ),
                      );
                      ;
                    } else if (state is ErrorCollectionState) {
                      return MessageDisplayWidget(message: state.message);
                    }
                    return const LoadingWidget();
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onRefresh(BuildContext context) async {
    BlocProvider.of<CollectionBloc>(context).add(RefreshCollectionEvent());
  }
}
