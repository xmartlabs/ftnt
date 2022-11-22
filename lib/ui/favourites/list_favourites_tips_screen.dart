import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/ui/common/context_extensions.dart';
import 'package:flutter_template/ui/section/global_ui/global_ui_cubit.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';
import 'package:flutter_template/ui/tips/tips_screen.dart';
import 'package:flutter_template/ui/tips/show_tips_type.dart';
import 'package:flutter_template/core/model/tip.dart';

class ListFavouritesTipsScreen extends StatelessWidget {
  final ShowTipsType showTipType;
  final Tip? tip;

  const ListFavouritesTipsScreen({
    required this.showTipType,
    this.tip,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => GlobalUICubit(),
        child: _ListFavouriteContent(showTipType: showTipType, tip: tip),
      );
}

class _ListFavouriteContent extends StatelessWidget {
  const _ListFavouriteContent({
    required this.showTipType,
    required this.tip,
    Key? key,
  }) : super(key: key);

  final ShowTipsType showTipType;
  final Tip? tip;

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<GlobalUICubit, GlobalUIState>(
        builder: (context, state) => SafeArea(
          child: Stack(
            children: [
              TipsScreen(
                showTipType: showTipType,
                tip: tip,
                hideFab: state.hideFavouriteFab,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 10),
                child: TextButton(
                  onPressed: context.router.navigateBack,
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(
                      top: 5,
                      left: 10,
                      right: 5,
                      bottom: 5,
                    ),
                    shape: const CircleBorder(),
                    backgroundColor: context.theme.colors.primary.shade100,
                    alignment: Alignment.center,
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
