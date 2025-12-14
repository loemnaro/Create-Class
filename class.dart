mixin Switchable {
  bool isOn = false;

  void turnOn() {
    isOn = true;
    print("Device is ON");
  }

  void turnOff() {
    isOn = false;
    print("Device is OFF");
  }
}

mixin Movable {
  void move() {
    print("Object is moving");
  }
}

mixin Soundable {
  void makeSound(String sound) {
    print(sound);
  }
}

mixin Openable {
  void open() {
    print("Object is opened");
  }

  void close() {
    print("Object is closed");
  }
}

class WashingMachine with Switchable {
  String brand;
  int capacityKg;
  int spinSpeed;

  WashingMachine(this.brand, this.capacityKg, this.spinSpeed);

  void startWash() {
    if (isOn) {
      print("$brand washing machine is washing clothes");
    } else {
      print("Turn on the washing machine first");
    }
  }

  void stopWash() {
    print("$brand washing machine stopped");
  }
}

class ElectricKettle with Switchable {
  String brand;
  double capacityLiter;
  String material;

  ElectricKettle(this.brand, this.capacityLiter, this.material);

  void boilWater() {
    if (isOn) {
      print("$brand kettle is boiling water");
    } else {
      print("Turn on the kettle first");
    }
  }
}

class Backpack with Openable {
  String brand;
  String color;
  int compartments;

  Backpack(this.brand, this.color, this.compartments);

  void storeItem(String item) {
    print("$item stored in $brand backpack");
  }
}

class Sheep with Movable, Soundable {
  String color;
  int age;

  Sheep(this.color, this.age);

  void eatGrass() {
    print("Sheep is eating grass");
  }

  void sleep() {
    print("Sheep is sleeping");
  }
}

class Car with Switchable, Movable, Soundable {
  String brand;
  String color;
  int maxSpeed;

  Car(this.brand, this.color, this.maxSpeed);

  void drive() {
    if (isOn) {
      print("$brand car is driving at $maxSpeed km/h");
    } else {
      print("Turn on the car first");
    }
  }

  void stop() {
    print("$brand car stopped");
  }
}

class ManualShaver with Openable {
  String brand;
  bool disposable;

  ManualShaver(this.brand, this.disposable);

  void shave() {
    print("$brand manual shaver is shaving");
  }
}

void main() {
  var washer = WashingMachine("LG", 8, 1200);
  washer.turnOn();
  washer.startWash();
  washer.stopWash();

  var kettle = ElectricKettle("Premier", 1.5, "Steel");
  kettle.turnOn();
  kettle.boilWater();

  var bag = Backpack("Half Moon", "Blue", 3);
  bag.open();
  bag.storeItem("Books");
  bag.close();

  var sheep = Sheep("White", 2);
  sheep.move();
  sheep.makeSound("Baa Baa");
  sheep.eatGrass();
  sheep.sleep();

  var car = Car("Toyota", "Red", 200);
  car.turnOn();
  car.move();
  car.drive();
  car.makeSound("Beep Beep");
  car.stop();

  var shaver = ManualShaver("Gillette", true);
  shaver.open();
  shaver.shave();
  shaver.close();
}
