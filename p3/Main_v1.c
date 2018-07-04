code Main

	-- OS Class: Project 3
	--
	-- AJINKYA SHINDE
	-- 
	-- This project contains the following:
	--   Sleeping Barber problem
	-- 	 Gaming Parlour problem


-----------------------------  Main  ---------------------------------

	function main ()
			--FatalError ("Need to implement")
			InitializeScheduler ()
			BarberCustomer ()
			--GamingParlour ()
			ThreadFinish ()
		endFunction




-------------------------Sleeping Barber------------------------------
	
	enum  ENTER,SICHR,BEGHR,FINHR,CLEAVE,START,END

	const 
		CHAIRS = 5


	var
		customers: Semaphore = new Semaphore
		barber: Semaphore = new Semaphore
		SyncLock: Mutex = new Mutex
		PrintLock: Mutex = new Mutex
		waiting: int = 0
		status: array [6] of int = new array of int {6 of 0}
		barbcust: array [6] of Thread = new array of Thread {6 of new Thread } -- print chair positions
		index: int

	function BarberCustomer()
			SyncLock.Init () 							-- Initialize lock for critical section
			PrintLock.Init () 						-- Initialize lock for PrintBuffer
			customers.Init(0)							-- Initialize customers Semaphore
			barber.Init(0)		-- Initialize barber Semaphore
		-- Code to implement no. of customers thread and barber thread
			print ("     ")

			print ("   Barber    1    2    3    4    5")
			nl()
			barbcust[0].Init ("Barber-1")
			barbcust[0].Fork (Barber, 1)

			barbcust[1].Init ("Customer-1")
			barbcust[1].Fork (Customer, 1)

			barbcust[2].Init ("Customer-2")
			barbcust[2].Fork (Customer, 2)

			barbcust[3].Init ("Customer-3")
			barbcust[3].Fork (Customer, 3)

			barbcust[4].Init ("Customer-4")
			barbcust[4].Fork (Customer, 4)

			barbcust[5].Init ("Customer-5")
			barbcust[5].Fork (Customer, 5)



		endFunction



	function Barber()
			while true
				customers.Down()
				SyncLock.Lock()						--code for acquiring the lock
				waiting = waiting - 1
				barber.Up()								-- code for waking up the sleeping customer
				SyncLock.Unlock()					--code for releasing the lock
				--call method to cut hair
				CutHair(0)
			endWhile	
		endFunction


	function Customer (cno: int)
				SyncLock.Lock()						--code for acquiring the lock
				status[cno] = ENTER
				PrintBuffer (cno)
			if waiting < CHAIRS
				waiting = waiting + 1
				status[cno] = SICHR
				PrintBuffer (cno)
				customers.Up() 						-- wakes up barber
				SyncLock.Unlock()					--code for releasing the lock
				barber.Down()        			-- goes to sleep if no. barber
				GetHaircut(cno)						--call method that tells customer is getting haircut 
				status[cno] = CLEAVE
				PrintBuffer (cno)
			else
				status[cno] = CLEAVE
				PrintBuffer (cno)
				SyncLock.Unlock()					--code for releasing the lock
			endIf
		endFunction

	function CutHair (cno: int)
		
		status[cno] = START
		PrintBuffer (cno)
		wait(75)
		status[cno] = END
		PrintBuffer (cno)
	
		endFunction

	function GetHaircut (cno: int)
		
		status[cno] = BEGHR
		PrintBuffer (cno)
		wait(50)
		status[cno] = FINHR
		PrintBuffer (cno)
			
		endFunction		

	function wait(waitingTime: int)
			var 
				p: int
			for p = 0 to waitingTime
			currentThread.Yield ()
			endFor	
	endFunction


	function PrintBuffer (p1: int)

		var
			p: int
			q: int
			totalspaces: int
		
		PrintLock.Lock()
		for q = 1 to waiting
					print ("X")
		endFor

		for q = 1 to (CHAIRS-waiting)
					print ("-")
		endFor
		
		print ("   ")
			if p1 == 0
				totalspaces = 0
			else
				totalspaces=(p1*5)+5
			endIf

			for p = 1 to totalspaces
				print (" ")
			endFor
		
			switch status[p1]
				case ENTER:
					print ("E    ")
					break
				case SICHR:
					print ("S    ")
					break
				case BEGHR:
					print ("B    ")
					break
				case FINHR:
					print ("F    ")
					break
				case CLEAVE:
					print ("L    ")
					break
				case START:
					print ("start     ")
					break
				case END:
					print ("end       ")
					break
			endSwitch
					nl ()
		
			PrintLock.Unlock()

	endFunction
-----------------------Gaming Parlor Problem------------------------------------
	
	const
			totDice = 8

	var
			mon: FDeskMonitor
			grpplayers: array [8] of Thread = new array of Thread {8 of new Thread }

	function GamingParlour ()
		mon = new FDeskMonitor
		mon.Init()

		grpplayers[0].Init("A Backgammon")
		grpplayers[0].Fork(playingGame, 4)

		grpplayers[1].Init("B Backgammon")
		grpplayers[1].Fork(playingGame, 4)

		grpplayers[2].Init("C Risk")
		grpplayers[2].Fork(playingGame, 5)

		grpplayers[3].Init("D Risk")
		grpplayers[3].Fork (playingGame, 5)

		grpplayers[4].Init("E Monopoly")
		grpplayers[4].Fork(playingGame, 2)

		grpplayers[5].Init("F Monopoly")
		grpplayers[5].Fork(playingGame, 2)

		grpplayers[6].Init("G Pictionary")
		grpplayers[6].Fork(playingGame, 1)

		grpplayers[7].Init("H Pictionary")
		grpplayers[7].Fork(playingGame, 1)

		endFunction

	function playingGame (diceReq: int)
		var 
			i: int
			w: int
		for i = 1 to 5
			mon.Request (diceReq)
			for	w = 0 to 100
				currentThread.Yield ()
			endFor
			mon.Return (diceReq)
		endFor
		endFunction


	class FDeskMonitor
		superclass Object
		fields
			numberDiceAvail: int
			monMutex: Mutex                      -- Lock for Monitors shared data variables
			aheadList: Condition
			backList: Condition
			waitList: int
		methods 
			Init ()
			Request (numNeeded: int)
			Return (numReturned: int)
			Print (str: String, count: int)
	endClass

	behavior FDeskMonitor

		method Init ()
			numberDiceAvail = totDice
			monMutex = new Mutex
			monMutex.Init ()
			aheadList = new Condition
			aheadList.Init ()
			backList = new Condition
			backList.Init ()
			waitList = 0
			endMethod

		
		method Request (numNeeded: int)
			monMutex.Lock ()
			self.Print ("requests", numNeeded)
			waitList = waitList + 1

			if waitList > 1
				backList.Wait (&monMutex)
			endIf

			while numberDiceAvail < numNeeded
				aheadList.Wait (&monMutex)
			endWhile
			
			numberDiceAvail = numberDiceAvail - numNeeded
			waitList = waitList - 1
			backList.Signal (&monMutex)
			self.Print ("proceeds with", numNeeded)	
			monMutex.Unlock ()
			endMethod

		method Return (numReturned: int)
			monMutex.Lock ()
			numberDiceAvail = numberDiceAvail + numReturned
			aheadList.Signal (&monMutex)
			self.Print ("releases and adds back", numReturned)
			monMutex. Unlock()
			endMethod

		method Print (str: String, count: int)
			--
			-- This method prints the current thread's name and the arguments.
			-- It also prints the current number of dice available.
			--
			print (currentThread.name)
			print (" ")
			print (str)
			print (" ")
			printInt (count)
			nl ()
			print ("------------------------------Number of dice now avail = ")
			printInt (numberDiceAvail)
			nl ()
			endMethod

	endBehavior

endCode
