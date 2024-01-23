import 'package:demo_movie/base/base_bloc.dart';
import 'package:demo_movie/base/base_event.dart';
import 'package:demo_movie/event/event_empty.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class BlocListener<T extends BaseBloc> extends StatefulWidget {
  const BlocListener({Key? key, required this.child, required this.listener}) : super(key: key);

  final Widget child;
  final Function(BaseEvent event) listener;

  @override
  State<BlocListener> createState() => _BlocListenerState<T>();
}

class _BlocListenerState<T> extends State<BlocListener> {

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    var bloc = Provider.of<T>(context) as BaseBloc;
    bloc.stream.listen((event) {
      widget.listener(event);
    },
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamProvider<BaseEvent>.value(
      value: (Provider.of<T>(context) as BaseBloc).stream,
      initialData: EmptyEvent(),
      updateShouldNotify: (prev, current) {
        return false;
      },
      child: Consumer<BaseEvent>(
        builder: (context, event, child) {
          return Container(
            child: widget.child,
          );
        },
      ),
    );
  }
}
