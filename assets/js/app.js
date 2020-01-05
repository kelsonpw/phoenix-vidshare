import '../css/app.css';
import 'phoenix_html';

window.setTimeout(() => {
  const alerts = document.querySelectorAll('.alert');
  alerts.forEach(alert => {
    console.log({ alert });
    alert.style.display = 'none';
  });
}, 3000);
