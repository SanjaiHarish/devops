import pandas as pd
import matplotlib.pyplot as plt


data = {
    'Product_Name': ['Laptop', 'Phone', 'Tablet', 'Watch', 'Speaker'],
    'Customer_Rating': [4.5, 4.8, None, 4.2, 4.7]
}

df = pd.DataFrame(data)

df = df.dropna()

print(df)

average_rating = df['Customer_Rating'].mean()

print("\nAverage Rating:", average_rating)


top3 = df.nlargest(3, 'Customer_Rating')

print("\nTop 3 Rated Products:")
print(top3)


plt.bar(df['Product_Name'], df['Customer_Rating'])

plt.title("Product Ratings")
plt.xlabel("Products")
plt.ylabel("Ratings")

plt.show()
