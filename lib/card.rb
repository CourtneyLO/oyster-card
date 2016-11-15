class Oystercard

  attr_reader :balance

    Maximum_balance = 90


    def initialize
      @balance = 0
      @in_journey = false
    end

    def top_up(amount)
      raise "Cannot top up: balance capacity of #{Maximum_balance} has been exceeded" if @balance + amount > Maximum_balance
      @balance += amount
    end

    def deduct(amount)
      @balance -= amount
    end

     def touch_in
       raise "Cannot touch in: not enough funds" if balance < 1
       @in_journey = true
     end

     def touch_out
       @in_journey = false
     end

     def in_journey?
       @in_journey
     end

  end
