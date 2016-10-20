class Paperboy

  attr_reader :name, :earnings
  attr_accessor :experience

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  def quota
    quota = 50 + (@experience/2)
  end

  def deliver(start_address, end_address)
    papers_delivered = end_address - start_address
    per_paper_pay_total = 0.25 * papers_delivered

    if papers_delivered > quota
      money_earned = per_paper_pay_total + ( (papers_delivered - quota) * 0.25 )
    elsif papers_delivered < quota
      money_earned = per_paper_pay_total - 2
    elsif papers_delivered == quota
      money_earned = per_paper_pay_total
    end

    @experience = @experience + papers_delivered
    @earnings = @earnings + money_earned
    return money_earned

  end

  def report
    "I'm #{ @name }, I've delivered #{ @experience } papers and have earned $#{ @earnings }!"
  end

end

johnny = Paperboy.new('Johnny')
