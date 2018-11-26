#! /bin/bash
# cars.sh
# Eric Lim
int i = 0;
while [[ i==0 ]]; do
  echo "My Old Cars Inventory System";
  echo "----------------------------";
  echo "1. Enter a Car";
  echo "2. List the cars";
  echo "Q. Quit";
  read option;
  case "$option" in
    "1" ) echo "Year?";
          read a;
          echo "Make?";
          read b;
          echo "Model?";
          read c;
          d="$a:$b:$c";
          echo "$d" >> my_old_cars;
      ;;
    "2" ) cat my_old_cars;
      ;;
    "Q" ) echo "Goodbye";
          break;
      ;;
    * ) echo "Illegal Input"
      ;;
  esac
done
