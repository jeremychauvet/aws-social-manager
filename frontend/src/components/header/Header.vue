<template>
   <div>
      <b-navbar>
        <template slot="start">
            <b-navbar-item>
                <router-link to="/">Home</router-link>
            </b-navbar-item>
            <b-navbar-item>
                <router-link to="/about">About</router-link>
            </b-navbar-item>
        </template>

        <template slot="end">
            <b-navbar-item tag="div">
                <div class="buttons">
                    <button class="button is-light">
                        <router-link to="/login">Login</router-link>
                    </button>
                </div>
            </b-navbar-item>
        </template>
    </b-navbar>
    <br><br>
  </div>
</template>

<script>
export default {
  name: "Header"
}
</script>

<style>

</style>
