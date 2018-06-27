
library  inspector;

import 'dart:mirrors';
import 'test.dart';

class TypeInspector {

  ClassMirror _classMirror;

  TypeInspector(Type type) {
    _classMirror = reflectClass(type);
  }

  List<MethodMirror> getAnnotatedMethods(String annotation) {

    List<MethodMirror> result = [];
    
    _classMirror.instanceMembers.forEach(
      (Symbol name, MethodMirror method) {
        if (_isMethodAnnotated(method, annotation)) {
          result.add(method);
        }
      }); 

      return result;

  }

  bool _isMethodAnnotated(MethodMirror method, String annotation) {

    return method.metadata.any(
      (InstanceMirror inst) {
        if (inst.reflectee is Test &&
          !(inst.reflectee as Test).include) {
            return false;
          }
      
        return inst.reflectee.toString() == annotation;
      });

  }

}