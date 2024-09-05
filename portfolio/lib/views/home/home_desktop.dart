part of home_view;

class _HomeDesktop extends StatefulWidget {
  final HomeViewModel viewModel;

  _HomeDesktop(this.viewModel);

  @override
  State<_HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<_HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InformationTab(),
            SizedBox(
              width: ValueConstants.space20Px(context),
            ),
            Expanded(
                child: Column(
              children: [
                CustomAppBar(),
                CustomContainer(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
