module SavingsAccount
  def self.interest_rate(balance)
    if balance >= 0 and balance < 1000
      return 0.5
    elsif balance >= 1000 and balance < 5000
      return 1.621
    elsif balance >= 5000
      return 2.475
    elsif balance < 0
      return 3.213
    end
  end

  def self.annual_balance_update(balance)
    interest_rate(balance)/100 * balance + balance
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0;
    new_balance = current_balance
    while new_balance < desired_balance 
      new_balance = annual_balance_update(new_balance)
      years += 1
    end
    return years.to_i
  end
end
