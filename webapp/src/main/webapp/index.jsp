// Create and style the page dynamically
document.body.style.margin = "0";
document.body.style.padding = "0";
document.body.style.height = "100%";
document.body.style.width = "100%";
document.body.style.fontFamily = "Arial, sans-serif";
document.body.style.background = "url('https://assets.gqindia.com/photos/65799eb51147c91e95b7ff01/16:9/w_2560%2Cc_limit/most-searched-cricketer-of-2023_001.jpg') no-repeat center center fixed";
document.body.style.backgroundSize = "cover";
document.body.style.display = "flex";
document.body.style.justifyContent = "center";
document.body.style.alignItems = "center";
document.body.style.flexDirection = "column";
document.body.style.color = "white";
document.body.style.textAlign = "center";

// Create heading
const heading = document.createElement("h1");
heading.textContent = "Welcome to the Cricket Experience";
heading.style.fontSize = "2.5em";
heading.style.textShadow = "2px 2px 8px #000";
heading.style.marginBottom = "30px";
document.body.appendChild(heading);

// Button creation helper
function createButton(text) {
  const button = document.createElement("button");
  button.textContent = text;
  button.className = "action-button";
  button.style.width = "200px";
  button.style.padding = "12px";
  button.style.margin = "10px";
  button.style.fontSize = "1em";
  button.style.fontWeight = "bold";
  button.style.backgroundColor = "#0047ab";
  button.style.color = "white";
  button.style.border = "none";
  button.style.borderRadius = "6px";
  button.style.cursor = "pointer";
  button.style.transition = "background-color 0.3s ease";

  button.addEventListener("mouseover", () => {
    button.style.backgroundColor = "#003380";
  });

  button.addEventListener("mouseout", () => {
    button.style.backgroundColor = "#0047ab";
  });

  return button;
}

// Add buttons
document.body.appendChild(createButton("Login"));
document.body.appendChild(createButton("Create Account"));
