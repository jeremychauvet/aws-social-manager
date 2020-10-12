<template>
  <section>
    <b-field label="Name">
        <b-input placeholder="What is your name ?"></b-input>
    </b-field>

    <b-field label="Email">
        <b-input type="email" placeholder="What is you email ?" maxlength="30"></b-input>
    </b-field>

    <b-field label="Password">
        <b-input type="password" maxlength="30"></b-input>
    </b-field>

    <div class="buttons">
      <b-button type="is-info is-light" expanded>Login</b-button>
    </div>
  </section>
</template>

<script>
export default {
  name: 'Login'
}
</script>
