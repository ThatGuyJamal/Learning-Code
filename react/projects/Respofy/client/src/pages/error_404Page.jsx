import React from "react";
import { Link } from "react-router-dom";

export default function error_404Page() {
	return (
		<div>
			<div>
				<h1>This Page cant be found!</h1>
			</div>
			<div>
				<h2>
					<Link to="/">Home</Link>
				</h2>
			</div>
		</div>
	);
}
