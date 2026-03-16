// Q1: Find all customers from Mumbai
db.customers.find({ city: "Mumbai" })

// Q2: Find all orders placed by customer C001
db.customers.find(
  { customer_id: "C001" },
  { orders: 1, _id: 0 }
)

// Q3: Find products ordered in order ORD1001
db.customers.find(
  { "orders.order_id": "ORD1001" },
  { "orders.products": 1, _id: 0 }
)

// Q4: Count total customers
db.customers.countDocuments()

// Q5: Find customers who ordered Laptop
db.customers.find({
  "orders.products.product_name": "Laptop"
})
