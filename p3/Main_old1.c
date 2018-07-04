code Main
	


function main ()
		InitializeScheduler ()
		testSleepingBarberPart1 ()
		ThreadFinish ()
	endFunction

	const
		CHAIRS = 5
		CUST_COUNT = 15
		BARB_COUNT = 1

	var
		customers: Semaphore = new Semaphore 
		barbers: Semaphore = new Semaphore
		mutexLock: Mutex = new Mutex
		waitCounter: int = 0
		threads: array[50] of Thread = new array of Thread {50 of new Thread}
		barbThreads: array[1] of Thread = new array of Thread { 1 of new Thread}

	-------------------------------------------------------------------------------
	------------------------- PART1: Sleeping Barber ----------------------------
	-------------------------------------------------------------------------------

	function testSleepingBarberPart1	()
		var 
			total: int
			index: int

			customers.Init (0)
			barbers.Init (0)
			mutexLock.Init ()
			total = BARB_COUNT+CUST_COUNT
			barbThreads[0].Init ("Barber")
			barbThreads[0].Fork (barber,1)

			--------------------------------------------------------------
			-- COMMENTED CODE: Useful for testing large numbers of
			-- Barbers/Customers. However I couldn't implement a
			-- concat of a string "Barber" with the index. Adding a static
			-- test below to demenstrate meaningful output usage.
			--------------------------------------------------------------

			-- for index = 0 to BARB_COUNT
			-- thread[index].Init ("Barber ")
			-- endFor

			-- for index = BARB_COUNT to CUST_COUNT
			-- thread[index].Init ("Customer ")
			-- endFor

			-- for index = 0 to BARB_COUNT
			-- thread[index].Fork (barber,50)
			-- endFor

			-- for index = BARB_COUNT to CUST_COUNT
			-- thread[index].Fork (customer, index * 50)
			--endFor

			print (" Barber 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 \n")
			threads[0].Init ("Customer #1")
			threads[1].Init ("Customer #2")
			threads[2].Init ("Customer #3")
			threads[3].Init ("Customer #4")
			threads[4].Init ("Customer #5")
			threads[5].Init ("Customer #6")
			threads[6].Init ("Customer #7")
			threads[7].Init ("Customerf#8")
			threads[8].Init ("Customer #9")
			threads[9].Init ("Customer #10")
			threads[10].Init ("Customer #11")
			threads[11].Init ("Customer #12")
			threads[12].Init ("Customer #13")
			threads[13].Init ("Customer #14")
			threads[14].Init ("Customer #15") 
			-- Iterate over the customers
			for index = 0 to CUST_COUNT - 1
				threads[index].Fork (customer, index)
			endFor
			ThreadFinish ()
	endFunction



	---------------------------------------------------------------------
	-- BARBER

	---------------------------------------------------------------------
	function barber (timeToWait: int)
		while  (true)
			customers.Down () 
			mutexLock.Lock ()
			waitCounter = waitCounter - 1 
			barbers.Up ()
			mutexLock.Unlock ()
			cut_hair (timeToWait)
		endWhile
	endFunction


	---------------------------------------------------------------------
	-- CUSTOMER
	---------------------------------------------------------------------
	function customer  (id: int)
		--wait (timeToWait) -- Wait a specific amount of time before a 'new' customer arrives
		mutexLock.Lock ()
		E (id)
		-- If there is no one waiting, wake up the barber and get haircut/take a seat
		if  (waitCounter < CHAIRS) 
			waitCounter = waitCounter + 1
			S (id)
			customers.Up ()
			mutexLock.Unlock () 
			barbers.Down () 
			get_haircut (id)
			L (id) 
			-- The shop is full  (NO seats) 
		else
			L (id)
			mutexLock.Unlock ()
		endIf
	endFunction

	---------------------------------------------------------------------
	-- BUSY LOOP: Dummy function that just waits x-time
	---------------------------------------------------------------------
	function wait (timeToWait: int)
		var 
			index: int
		for index = 1 to timeToWait
			currentThread.Yield ()
		endFor
	endFunction

	function get_haircut (custNum: int)
		mutexLock.Lock ()
		B (custNum)
		wait (50)
		F (custNum)
		mutexLock.Unlock ()
	endFunction

	function cut_hair (custNum: int)
		mutexLock.Lock ()
		Start ()
		wait (75)
		End ()
		mutexLock.Unlock ()
	endFunction
	---------------------------------------------------------------------
	-- Print Helper Function
	---------------------------------------------------------------------
	function Start ()
		printChairs ()
		print (" start \n")
	endFunction

	function End ()
		printChairs ()
		print (" end \n")
	endFunction

	function printChairs ()
		var
			index: int
		for index = 1 to waitCounter
			print ("X")
		endFor
		for index = 1 to CHAIRS - waitCounter
			print ("-")
		endFor
	endFunction

	--------------------
	-- Print extra spaces
	--------------------
	function printSpace (space: int)
		var 
			index: int
			totSpaces: int
			print (" ")
			totSpaces = space * 3
		for index = 1 to totSpaces
			print (" ")
		endFor
	endFunction

	--------------------
	-- E: Enter
	--------------------
	function E (custNum: int)
		printChairs ()
		printSpace (custNum)
		print ("E \n")
	endFunction

	--------------------
	-- S: Sit in waiting chair
	--------------------
	function S (custNum: int)
		printChairs ()
		printSpace (custNum)
		print ("S \n")
	endFunction

	--------------------
	-- B: Begin Haircut
	--------------------
	function B (custNum: int)
		printChairs ()
		printSpace (custNum)
		print ("B \n")
	endFunction

	--------------------
	-- F: Finish haircut
	--------------------
	function F (custNum: int)
		printChairs ()
		printSpace (custNum)
		print ("F \n")
	endFunction

	--------------------
	-- L: Leave
	--------------------
	function L (custNum: int)
		printChairs ()
		printSpace (custNum)
		print ("L \n")
	endFunction

endCode
