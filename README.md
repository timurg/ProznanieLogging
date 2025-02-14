Стек EFK (elasticsearch + fluent-bit + kibana) с минимальным потреблением памяти.
1. elasticsearch - не мапит порт для прямого доступа за пределами proznanie_net.
2. fluent-bit и kibana смотрят доступны, и не защищены от вандализма и от log flooding attack, DoS атак, но защищены от чрезмерного потребления ресурсов.
