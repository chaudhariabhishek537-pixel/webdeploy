
document.addEventListener("DOMContentLoaded", function() {
	const msgDiv = document.getElementById("msg");

	if (msgDiv) {
		const type = msgDiv.getAttribute("data-type");
		const text = msgDiv.getAttribute("data-text");

		// Simple alert, or use toast/snackbar
		if (type === "success") {
			alert("✅ " + text);
		} else if (type === "error") {
			alert("❌ " + text);
		}

		// Optional: Remove the message after showing
		msgDiv.remove();
	}
});
