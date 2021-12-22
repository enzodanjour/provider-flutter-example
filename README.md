# provider Flutter Example
![Screenshot from 2021-12-22 17-04-28](https://user-images.githubusercontent.com/35856303/147154341-2d63e0ff-d2a8-436a-be4e-64825fbad85b.png)


The purpose od this project is learn about (provider)[https://pub.dev/packages/provider] with dependency injection and state management.

## Getting Started

This project has three usages of provider:
### Provider simple 
your usage is to inject simply a dependency of a object.

declaration in (main.dart)[lib/main.dart] and watch in (produto_widget)[lib/provider/produto_widget.dart] and (provider_page)[lib/provider/provider_page.dart]

### ChangeNotifierProvider
your usage is to has reactivity of change notifier with dependency injection of provider, and can has methods to make thinks.

declaration in (main.dart)[lib/main.dart] and (provider controller)[lib/change_notifier/provider_controller.dart] and watch in (change notifier page)[lib/change_notifier/change_notifier_page.dart] 

### Multiprovider
The purpose of that is to easyly declare in main.dart the many providers simply and readable

declaration is in (main.dart)[lib/main.dart]

## recover values
to watch values has simply use ``context.read<ProviderController>()`` and has (selector)[https://pub.dev/documentation/provider/latest/provider/Selector-class.html] to get limited quantity of values without need rebuild every any time.

has the usage of ``context.watch<UserModel>();`` to watch a value .

has the usage of (Tuple package)[https://pub.dev/packages/tuple] to get multiples selectors, without need every
