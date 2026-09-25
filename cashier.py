class Cashier:
    def __init__(self):
        pass

    def process_coins(self):
        """Returns the total calculated from coins inserted."""
        print("Please insert coins.")
        dollars = int(input("how many large dollars?: ") or 0)
        half_dollars = int(input("how many half dollars?: ") or 0)
        quarters = int(input("how many quarters?: ") or 0)
        nickels = int(input("how many nickels?: ") or 0)

        total = (dollars * 1.0) + (half_dollars * 0.50) + (quarters * 0.25) + (nickels * 0.05)
        return total

    def transaction_result(self, coins, cost):
        """Returns True when the payment is accepted, or False if money is insufficient."""
        if coins >= cost:
            change = round(coins - cost, 2)
            if change > 0:
                print(f"Here is ${change:.2f} in change.")
            return True
        else:
            print("Sorry that's not enough money. Money refunded.")
            return False