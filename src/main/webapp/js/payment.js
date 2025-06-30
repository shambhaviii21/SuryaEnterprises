document.addEventListener("DOMContentLoaded", function () {
    const totalAmountText = document.querySelector(".total-label:last-child").textContent;
    const amountInPaise = parseFloat(totalAmountText.replace("₹", "").trim()) * 100;

    var options = {
        key: "rzp_test_uFEyBCla4xFYVn", // Razorpay Key
        amount: amountInPaise,
        currency: "INR",
        name: "Surya Enterprises",
        description: "Secure Payment",
        handler: function (response) {
            alert("Payment successful! Payment ID: " + response.razorpay_payment_id);
        },
        prefill: {
            name: document.getElementById("name").value,
            email: document.getElementById("email").value,
            contact: document.getElementById("contact").value
        },
        theme: {
            color: "#000000"
        }
    };

    const rzp = new Razorpay(options);

    const btn = document.getElementById("rzp-button");
    if (btn) {
        btn.addEventListener("click", function (e) {
            e.preventDefault();
            rzp.open();
        });
    }
});
