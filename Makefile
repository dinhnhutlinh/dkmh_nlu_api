run:
	dart lib/main.dart

generate:
	dart run build_runner build --delete-conflicting-outputs 

example:
	dart example/dkmh_nlu_api_example.dart