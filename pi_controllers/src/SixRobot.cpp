
#include <SixRobot.hpp> 
#include <iostream> 
using namespace std;

//define class methods 
void SixRobot::stop() {

	digitalWrite(IN1, LOW);
	digitalWrite(IN2, LOW);
	digitalWrite(IN3, LOW);
	digitalWrite(IN4, LOW);
	digitalWrite(IN5, LOW);
	digitalWrite(IN6, LOW);
	digitalWrite(IN7, LOW);
	digitalWrite(IN8, LOW);
	digitalWrite(IN9, LOW);
	digitalWrite(IN10, LOW);
	digitalWrite(IN11, LOW);
	digitalWrite(IN12, LOW);
	state = 0;
}
void SixRobot::goForward1() {
	stop();
	digitalWrite(IN1, LOW);
	digitalWrite(IN2, HIGH);
	digitalWrite(IN3, LOW);
	digitalWrite(IN4, LOW);
	digitalWrite(IN5, LOW);
	digitalWrite(IN6, LOW);
	digitalWrite(IN7, LOW);
	digitalWrite(IN8, LOW);
	digitalWrite(IN9, LOW);
	digitalWrite(IN10, LOW);
	digitalWrite(IN11, LOW);
	digitalWrite(IN12, LOW);
	state = 1;
}
void SixRobot::goBackward1() {
	stop();
	digitalWrite(IN1, HIGH);
	digitalWrite(IN2, HIGH);
	digitalWrite(IN3, LOW);
	digitalWrite(IN4, LOW);
	digitalWrite(IN5, LOW);
	digitalWrite(IN6, LOW);
	digitalWrite(IN7, LOW);
	digitalWrite(IN8, LOW);
	digitalWrite(IN9, LOW);
	digitalWrite(IN10, LOW);
	digitalWrite(IN11, LOW);
	digitalWrite(IN12, LOW);
	state = 2;
}
void SixRobot::goForward2() {
	stop();
	digitalWrite(IN1, LOW);
	digitalWrite(IN2, LOW);
	digitalWrite(IN3, LOW);
	digitalWrite(IN4, HIGH);
	digitalWrite(IN5, LOW);
	digitalWrite(IN6, LOW);
	digitalWrite(IN7, LOW);
	digitalWrite(IN8, LOW);
	digitalWrite(IN9, LOW);
	digitalWrite(IN10, LOW);
	digitalWrite(IN11, LOW);
	digitalWrite(IN12, LOW);
	state = 3;
}
void SixRobot::goBackward2() {
	stop();
	digitalWrite(IN1, LOW);
	digitalWrite(IN2, LOW);
	digitalWrite(IN3, HIGH);
	digitalWrite(IN4, HIGH);
	digitalWrite(IN5, LOW);
	digitalWrite(IN6, LOW);
	digitalWrite(IN7, LOW);
	digitalWrite(IN8, LOW);
	digitalWrite(IN9, LOW);
	digitalWrite(IN10, LOW);
	digitalWrite(IN11, LOW);
	digitalWrite(IN12, LOW);
	state = 4;
}
void SixRobot::goForward3() {
	stop();
	digitalWrite(IN1, LOW);
	digitalWrite(IN2, LOW);
	digitalWrite(IN3, LOW);
	digitalWrite(IN4, LOW);
	digitalWrite(IN5, LOW);
	digitalWrite(IN6, HIGH);
	digitalWrite(IN7, LOW);
	digitalWrite(IN8, LOW);
	digitalWrite(IN9, LOW);
	digitalWrite(IN10, LOW);
	digitalWrite(IN11, LOW);
	digitalWrite(IN12, LOW);
	state = 5;
}
void SixRobot::goBackward3() {
	stop();
	digitalWrite(IN1, LOW);
	digitalWrite(IN2, LOW);
	digitalWrite(IN3, LOW);
	digitalWrite(IN4, LOW);
	digitalWrite(IN5, HIGH);
	digitalWrite(IN6, HIGH);
	digitalWrite(IN7, LOW);
	digitalWrite(IN8, LOW);
	digitalWrite(IN9, LOW);
	digitalWrite(IN10, LOW);
	digitalWrite(IN11, LOW);
	digitalWrite(IN12, LOW);
	state = 6;
}
void SixRobot::goForward4() {
	stop();
	digitalWrite(IN1, LOW);
	digitalWrite(IN2, LOW);
	digitalWrite(IN3, LOW);
	digitalWrite(IN4, LOW);
	digitalWrite(IN5, LOW);
	digitalWrite(IN6, LOW);
	digitalWrite(IN7, LOW);
	digitalWrite(IN8, HIGH);
	digitalWrite(IN9, LOW);
	digitalWrite(IN10, LOW);
	digitalWrite(IN11, LOW);
	digitalWrite(IN12, LOW);
	state = 7;
}
void SixRobot::goBackward4() {
	stop();
	digitalWrite(IN1, LOW);
	digitalWrite(IN2, LOW);
	digitalWrite(IN3, LOW);
	digitalWrite(IN4, LOW);
	digitalWrite(IN5, LOW);
	digitalWrite(IN6, LOW);
	digitalWrite(IN7, HIGH);
	digitalWrite(IN8, HIGH);
	digitalWrite(IN9, LOW);
	digitalWrite(IN10, LOW);
	digitalWrite(IN11, LOW);
	digitalWrite(IN12, LOW);
	state = 8;
}
void SixRobot::goForward5() {
	stop();
	digitalWrite(IN1, LOW);
	digitalWrite(IN2, LOW);
	digitalWrite(IN3, LOW);
	digitalWrite(IN4, LOW);
	digitalWrite(IN5, LOW);
	digitalWrite(IN6, LOW);
	digitalWrite(IN7, LOW);
	digitalWrite(IN8, LOW);
	digitalWrite(IN9, LOW);
	digitalWrite(IN10, HIGH);
	digitalWrite(IN11, LOW);
	digitalWrite(IN12, LOW);
	state = 9;
}
void SixRobot::goBackward5() {
	stop();
	digitalWrite(IN1, LOW);
	digitalWrite(IN2, LOW);
	digitalWrite(IN3, LOW);
	digitalWrite(IN4, LOW);
	digitalWrite(IN5, LOW);
	digitalWrite(IN6, LOW);
	digitalWrite(IN7, LOW);
	digitalWrite(IN8, LOW);
	digitalWrite(IN9, HIGH);
	digitalWrite(IN10, HIGH);
	digitalWrite(IN11, LOW);
	digitalWrite(IN12, LOW);
	state = 10;
}
void SixRobot::goForward6() {
	stop();
	digitalWrite(IN1, LOW);
	digitalWrite(IN2, LOW);
	digitalWrite(IN3, LOW);
	digitalWrite(IN4, LOW);
	digitalWrite(IN5, LOW);
	digitalWrite(IN6, LOW);
	digitalWrite(IN7, LOW);
	digitalWrite(IN8, LOW);
	digitalWrite(IN9, LOW);
	digitalWrite(IN10, LOW);
	digitalWrite(IN11, LOW);
	digitalWrite(IN12, HIGH);
	state = 11;
}
void SixRobot::goBackward6() {
	stop();
	digitalWrite(IN1, LOW);
	digitalWrite(IN2, LOW);
	digitalWrite(IN3, LOW);
	digitalWrite(IN4, LOW);
	digitalWrite(IN5, LOW);
	digitalWrite(IN6, LOW);
	digitalWrite(IN7, LOW);
	digitalWrite(IN8, LOW);
	digitalWrite(IN9, LOW);
	digitalWrite(IN10, LOW);
	digitalWrite(IN11, HIGH);
	digitalWrite(IN12, HIGH);
	state = 12;
}

void SixRobot::go(const int &d) {
	if (d == state) {
		return;
	}
	switch (d) {
	case 0:
		stop();
		break;
	case 1:
		goForward1();
		break;
	case 2:
		goBackward1();
		break;
	case 3:
		goForward2();
		break;
	case 4:
		goBackward2();
		break;
	case 5:
		goForward3();
		break;
	case 6:
		goBackward3();
		break;
	case 7:
		goForward4();
		break;
	case 8:
		goBackward4();
		break;
	case 9:
		goForward5();
		break;
	case 10:
		goBackward5();
		break;
	case 11:
		goForward6();
		break;
	case 12:
		goBackward6();
		break;

	default:
		stop();
	}
}
