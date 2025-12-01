import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FadePage<T> extends CustomTransitionPage<T> {
  FadePage({
    required super.child,
    super.key,
    Duration? duration,
    Curve curve = Curves.easeInOut,
  }) : super(
         transitionDuration: duration ?? const Duration(milliseconds: 300),
         reverseTransitionDuration:
             duration ?? const Duration(milliseconds: 300),
         transitionsBuilder:
             (
               BuildContext context,
               Animation<double> animation,
               Animation<double> secondaryAnimation,
               Widget child,
             ) {
               final curved = CurvedAnimation(parent: animation, curve: curve);

               return FadeTransition(opacity: curved, child: child);
             },
       );
}

class SlideRightPage<T> extends CustomTransitionPage<T> {
  SlideRightPage({
    required super.child,
    super.key,
    Duration? duration,
    Curve curve = Curves.easeOutCubic,
  }) : super(
         transitionDuration: duration ?? const Duration(milliseconds: 300),
         reverseTransitionDuration:
             duration ?? const Duration(milliseconds: 300),
         transitionsBuilder:
             (
               BuildContext context,
               Animation<double> animation,
               Animation<double> secondaryAnimation,
               Widget child,
             ) {
               final curved = CurvedAnimation(parent: animation, curve: curve);

               final offsetTween = Tween<Offset>(
                 begin: const Offset(1, 0),
                 end: Offset.zero,
               );

               return SlideTransition(
                 position: curved.drive(offsetTween),
                 child: child,
               );
             },
       );
}

class SlideLeftPage<T> extends CustomTransitionPage<T> {
  SlideLeftPage({
    required super.child,
    super.key,
    Duration? duration,
    Curve curve = Curves.easeOutCubic,
  }) : super(
         transitionDuration: duration ?? const Duration(milliseconds: 300),
         reverseTransitionDuration:
             duration ?? const Duration(milliseconds: 300),
         transitionsBuilder:
             (
               BuildContext context,
               Animation<double> animation,
               Animation<double> secondaryAnimation,
               Widget child,
             ) {
               final curved = CurvedAnimation(parent: animation, curve: curve);

               final offsetTween = Tween<Offset>(
                 begin: const Offset(-1, 0),
                 end: Offset.zero,
               );

               return SlideTransition(
                 position: curved.drive(offsetTween),
                 child: child,
               );
             },
       );
}

class ScalePage<T> extends CustomTransitionPage<T> {
  ScalePage({
    required super.child,
    super.key,
    Duration? duration,
    Curve curve = Curves.easeOutBack,
  }) : super(
         transitionDuration: duration ?? const Duration(milliseconds: 280),
         reverseTransitionDuration:
             duration ?? const Duration(milliseconds: 280),
         transitionsBuilder:
             (
               BuildContext context,
               Animation<double> animation,
               Animation<double> secondaryAnimation,
               Widget child,
             ) {
               final curved = CurvedAnimation(parent: animation, curve: curve);

               return ScaleTransition(scale: curved, child: child);
             },
       );
}
