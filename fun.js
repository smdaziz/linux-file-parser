rows = [
  "343,stackoverflow.com",
  "100,facebook.com",
  "500,mail.yahoo.com",
  "200,news.yahoo.com"
];
result = {};
rows.map((row) => row.split(",")[1].split(".").map((d, i, acc) => result[acc.slice(i).join(".")] = result[acc.slice(i).join(".")] ? parseInt(row.split(",")[0]) + result[acc.slice(i).join(".")] : parseInt(row.split(",")[0])));
console.log(result);


//https://replit.com/languages/javascript
