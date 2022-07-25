<template>
	<main class="mt-0 main-content">
		<section>
			<div class="page-header min-vh-100">
				<div class="container">
					<div class="row">
						<div
							class="mx-auto col-xl-4 col-lg-5 col-md-7 d-flex flex-column mx-lg-0"
						>
							<div class="card card-plain">
								<div class="pb-0 card-header text-start">
									<h4 class="font-weight-bolder">Sign In</h4>
									<p class="mb-0">Enter your email and password to sign in</p>
								</div>
								<div class="card-body">
									<form role="form">
										<div class="mb-3">
											<input
												type="text"
												placeholder="Store Name"
												name="store-name"
											/>
										</div>
										<div class="mb-3">
											<input
												type="text"
												placeholder="Username"
												name="username"
											/>
										</div>
										<div class="mb-3">
											<input
												type="password"
												placeholder="Password"
												name="password"
											/>
										</div>
										<div class="mb-3">
											<input
												type="text"
												placeholder="Consumer Key"
												name="consumer-key"
												v-model="consumerKey"
											/>
										</div>

										<div class="mb-3">
											<input
												type="text"
												placeholder="Consumer Secret"
												name="consumer-secret"
												v-model="consumerSecret"
											/>
										</div>
										<!-- <switch id="rememberMe">Remember me</switch> -->

										<div class="text-center">
											<button
												class="mt-4"
												variant="gradient"
												color="success"
												fullWidth
												v-on:click="login"
											>
												Sign in
											</button>
										</div>
									</form>
								</div>
							</div>
						</div>
						<div
							class="top-0 my-auto text-center col-6 d-lg-flex d-none h-100 pe-0 position-absolute end-0 justify-content-center flex-column"
						>
							<div
								class="position-relative bg-gradient-primary h-100 m-3 px-7 border-radius-lg d-flex flex-column justify-content-center overflow-hidden"
								style="
									background-image: url('https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/signin-ill.jpg');
									background-size: cover;
								"
							>
								<span class="mask bg-gradient-success opacity-6"></span>
								<h4
									class="mt-5 text-white font-weight-bolder position-relative"
								>
									"Attention is the new currency"
								</h4>
								<p class="text-white position-relative">
									The more effortless the writing looks, the more effort the
									writer actually put into the process.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
</template>

<script>
	// const body = document.getElementsByTagName("body")[0];
	import axios from "axios";
	export default {
		name: "SignIn",
		data() {
			return {
				consumerKey: "",
				consumerSecret: "",
			};
		},
		methods: {
			login(event) {
				if (event) {
					event.preventDefault();
				}
				console.log(this.consumerKey, this.consumerSecret);
				if (
					this.consumerKey === "ck_5b09fad59743925a301bacc32b38d0b59c0b954f" &&
					this.consumerSecret === "cs_bf715004408cc3d54199c1d9e9bcb647dddb1f32"
				) {
					let result = axios.get(
						`https://demomaster.gr/wc-api/v3/users?consumer_key=${this.consumerKey}&consumer_secret=${this.consumerSecret}`
					);
					if (result.status === 200) {
						console.log("OK");
					}
				} else {
					console.log("fail");
				}
			},
		},
	};
</script>

<style>
	#app {
		font-family: Avenir, Helvetica, Arial, sans-serif;
		-webkit-font-smoothing: antialiased;
		-moz-osx-font-smoothing: grayscale;
		text-align: center;
		color: #2c3e50;
		margin-top: 60px;
	}
</style>
