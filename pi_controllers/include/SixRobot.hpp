
#include <wiringPi.h>
#include <stdio.h>

class SixRobot {
public:
	//default constructor
	SixRobot() {
		wiringPiSetup ();
		pinMode(IN1, OUTPUT);
		pinMode(IN2, OUTPUT);
		pinMode(IN3, OUTPUT);
		pinMode(IN4, OUTPUT);
		pinMode(IN5, OUTPUT);
		pinMode(IN6, OUTPUT);
		pinMode(IN7, OUTPUT);
		pinMode(IN8, OUTPUT);
		pinMode(IN9, OUTPUT);
		pinMode(IN10, OUTPUT);
		pinMode(IN11, OUTPUT);
		pinMode(IN12, OUTPUT);
		stop();
	};
	//constuctor with pin numbers
	SixRobot(const int &IN1,
			 const int &IN2,
			 const int &IN3,
			 const int &IN4,
			 const int &IN5,
			 const int &IN6,
			 const int &IN7,
			 const int &IN8,
			 const int &IN9,
			 const int &IN10,
			 const int &IN11,
			 const int &IN12
			 ) : state(0), IN1(IN1), IN2(IN2), IN3(IN3), IN4(IN4), 
			 IN5(IN5), IN6(IN6), IN7(IN7), IN8(IN8), 
			 IN9(IN9), IN10(IN10), IN11(IN11), IN12(IN12){
		/* set mode to output */
		wiringPiSetup ();
		pinMode(IN1, OUTPUT);
		pinMode(IN2, OUTPUT);
		pinMode(IN3, OUTPUT);
		pinMode(IN4, OUTPUT);
		pinMode(IN5, OUTPUT);
		pinMode(IN6, OUTPUT);
		pinMode(IN7, OUTPUT);
		pinMode(IN8, OUTPUT);
		pinMode(IN9, OUTPUT);
		pinMode(IN10, OUTPUT);
		pinMode(IN11, OUTPUT);
		pinMode(IN12, OUTPUT);
		stop();
	};
	//destructor
	~SixRobot() {
		stop();
	};
	void go(const int& d);
	void stop();
	int getCurState() {return state;}
private: int state = 0;
	int IN1 = 2;    // DIR1
	int IN2 = 3;	// PLS1
	int IN3 = 4;    // DIR2
	int IN4 = 1;	// PLS2
	int IN5 = 0;    // DIR3
	int IN6 = 5;	// PLS3
	int IN7 = 21;    // DIR4
	int IN8 = 22;	// PLS4
	int IN9 = 23;    // DIR5
	int IN10 = 24;	// PLS5
	int IN11 = 25;    // DIR6
	int IN12 = 26;	// PLS6

	void goForward1();
	void goBackward1();
	void goForward2();
	void goBackward2();
	void goForward3();
	void goBackward3();
	void goForward4();
	void goBackward4();
	void goForward5();
	void goBackward5();
	void goForward6();
	void goBackward6();

};
