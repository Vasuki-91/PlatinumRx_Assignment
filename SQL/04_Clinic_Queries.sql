-- 1. Revenue by channel
SELECT sales_channel, SUM(amount) FROM clinic_sales GROUP BY sales_channel;

-- 2. Top customers
SELECT uid, SUM(amount) FROM clinic_sales GROUP BY uid ORDER BY SUM(amount) DESC;

-- 3. Profit
SELECT 
SUM(cs.amount) as revenue,
SUM(e.amount) as expense,
(SUM(cs.amount) - SUM(e.amount)) as profit
FROM clinic_sales cs JOIN expenses e ON cs.cid = e.cid;

-- 4. Most profitable clinic
SELECT cid, SUM(amount) as revenue
FROM clinic_sales
GROUP BY cid
ORDER BY revenue DESC
LIMIT 1;

-- 5. Second least profitable clinic
SELECT cid, SUM(amount) as revenue
FROM clinic_sales
GROUP BY cid
ORDER BY revenue ASC
LIMIT 1 OFFSET 1;