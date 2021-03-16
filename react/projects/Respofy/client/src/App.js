import "bootstrap/dist/css/bootstrap.min.css";
// import "./css/App.css";
import { HashRouter as Router, Switch, Route } from "react-router-dom";
import LoginPage from "./pages/Login";
import DashboardPage from "./pages/Dashboard";
import errorPage from "./pages/error_404Page";

function App() {
	const code = new URLSearchParams(window.location.search).get("code");
	return code ? <DashboardPage code={code} /> : <LoginPage />;

	// return (
	// 	<div>
	// 		<Router>
	// 			<Switch>
	// 				<Route path="/" exact component={LoginPage} />
	// 				<Route path="/dashboard" exact component={DashboardPage} />
	// 				<Route path="*" component={errorPage} />
	// 			</Switch>
	// 		</Router>
	// 	</div>
	// );
}

export default App;
