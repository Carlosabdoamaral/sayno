import { initializeApp } from "https://www.gstatic.com/firebasejs/9.1.1/firebase-app.js";
import { getAnalytics } from "https://www.gstatic.com/firebasejs/9.1.1/firebase-analytics.js";

const firebaseConfig = {
  apiKey: "AIzaSyCNdafTKxGLzoZQEYitq3hHjtJMFVAkSjo",
  authDomain: "sayno-1339d.firebaseapp.com",
  databaseURL: "https://sayno-1339d-default-rtdb.firebaseio.com",
  projectId: "sayno-1339d",
  storageBucket: "sayno-1339d.appspot.com",
  messagingSenderId: "380979575598",
  appId: "1:380979575598:web:b5d08be84826938822d8bf",
  measurementId: "G-TLWHTTKB85"
};

const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);