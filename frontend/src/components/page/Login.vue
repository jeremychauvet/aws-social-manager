<template>
  <section>
    <b-field label="Email">
        <b-input type="email" placeholder="Please type your email in this field" maxlength="30"></b-input>
    </b-field>

    <b-field label="Password">
        <b-input type="password" placeholder="Please type your password in this field" maxlength="30"></b-input>
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
