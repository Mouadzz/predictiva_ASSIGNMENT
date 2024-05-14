import 'package:flutter/material.dart';
import 'package:predictiva/core/common/widgets/top_navigation_widget.dart';
import 'package:predictiva/core/core.dart';
import 'package:predictiva/src/dashboard/presentation/widgets/dashboard_header_widget.dart';
import 'package:predictiva/src/dashboard/presentation/widgets/open_trades/open_trades_widget.dart';
import 'package:predictiva/src/dashboard/presentation/widgets/summary/summary_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        final useMobileLayout = SizeConfig.useMobileLayout;
        return Scaffold(
          appBar: TopNavigationWidget(useMobileLayout: useMobileLayout),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const DashboardHeaderWidget(),
                  SummaryWidget(useMobileLayout: useMobileLayout),
                  const SizedBox(height: 24),
                  const OpenTradesWidget(),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}