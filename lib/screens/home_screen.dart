import 'package:flutter/material.dart';
import 'package:task_management_ui/models/stage_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
List<Stage> statges = Stage.stages;

    return Scaffold(
      backgroundColor: const Color(0xFFEEF2F5),
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return  _DesktopLayout(stages: statges,);
        } else {
          return  _TableLayout(constraints: , statges: statges,);
        }
      }),
    );
  }
}

class _DesktopLayout extends StatelessWidget {
  const _DesktopLayout({super.key, required this.stages});

  final List<Stage> stages;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Row(
        children: [
          _SideBar(),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [_ScreenTitle()],
            ),
          ),
        ],
      ),
    );
  }
}

class _TableLayout extends StatelessWidget {
  const _TableLayout({super.key, required this.stages});

  final List<Stage> stages;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: const Row(
        children: [
          _SideBar(),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_ScreenTitle()],
          )
        ],
      ),
    );
  }
}

class _SideBar extends StatelessWidget {
  const _SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<IconData> icons = [
      Icons.home,
      Icons.stacked_bar_chart,
      Icons.email,
      Icons.analytics,
      Icons.settings,
    ];
    return Container(
      width: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(children: [
        Image.asset('task-1.png'),
        const Spacer(flex: 1),
        ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return IconButton(
                  onPressed: () {},
                  color: const Color(0xFF3A86FF).withAlpha(155),
                  iconSize: 35,
                  icon: Icon(icons[index]));
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 20);
            },
            itemCount: 5),
        const Spacer(flex: 3),
      ]),
    );
  }
}

class _ScreenTitle extends StatelessWidget {
  const _ScreenTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        'Your Task',
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
      ),
    );
  }
}
