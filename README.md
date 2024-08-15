# Flutter Project Template (GetX, Dio, MVVM)

This Flutter Template using [GetX](https://pub.dev/packages/get) package for State management, routing and Dependency Injection (bindings). We are using [MVVM](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93viewmodel) (Model View ViewModel) architectural pattern here. For network call we are using [Dio](https://pub.dev/packages/dio) package. We followed the recommended folder structure of GetX and used [Get CLI](https://pub.dev/packages/get_cli) command line tool for creating the folder structure.

# Architecture of this project: MVVM

MVVM (Model View ViewModel) is one of the most popular architectural pattern for Android App development. Basically this pattern separates User interface from business-logic and data-logic. So that it's divided into three layers: Model layer,  View layer and View model layer. Let's explore it more deeply.

![mvvm](https://user-images.githubusercontent.com/3769029/137336079-1f3384d0-b9d6-4462-a2c4-4a3d2cc77e8a.png)

<b>ViewModel:</b> At first let's talk about ViewModel. Actually view model is a controller where we 
implement our business logics. It receives the data from the model and process the data according to
business logic and pushed into the live data observers which is observing by view.

<b>View:</b> View is the collections of widgets like Text, Image, Dropdown etc. Which will be displayed
to the users. Even it controls the user input. When it needs any data it command the view model (In this project it's controller)
for data and observe the response. Till then it may display a loader to the user.

<b>Model:</b> Model is basically backend logic. It controls the data source.

# Run this project by scripts

This project template is using scripts to run some flutter commands. So here is the example setup for the scripts in [pubspec.yaml](https://github.com/rahmat412/flutter-project-template/blob/main/pubspec.yaml) file:

```
scripts:
  build_runner: flutter pub run build_runner build --delete-conflicting-outputs
  launch:
    dev: flutter run --flavor dev --dart-define=flavor=dev
    stg: flutter run --flavor stg --dart-define=flavor=stg
    prod: flutter run --flavor prod --dart-define=flavor=prod
```

Using [derry](https://pub.dev/packages/rps) or [rps](https://pub.dev/packages/rps) to run the script. You have to install the package first then you can using the scripts. Here is the example commands:
1. Generate build_runner: `derry build_runner` or `rps build_runner`
2. Run flutter in your machine: `derry launch dev/stg/prod` or `rps launch dev/stg/prod`


# How to update app information and continue development for your own project?

1. Rename root folder name
2. Update project name and description from pubspec.yaml. 
3. Update app launcher name and icon. [Reference](https://medium.com/@vaibhavi.rana99/change-application-name-and-icon-in-flutter-bebbec297c57)
4. Update your app's package name by [running this command](https://pub.dev/packages/change_app_package_name):

`flutter pub run change_app_package_name:main your_package_name`

# How was this project developed?
- First, install get_cli in global package using: `flutter pub global activate --source=git "https://github.com/rahmat412/get_cli.git"`
- Run [get_cli](https://pub.dev/packages/get_cli) command to create project in the required directory: `get create project`
- Create `main_view` by running this command: `get create page:main`, it will add new modules named `main`
- Using `get create controller:main_temp on main` to add new controller in `main` module
- Using `get create view:main_temp on main` to add new view/page in `main` module