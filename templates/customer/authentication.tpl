{extends file='page.tpl'}

{block name='page_header_container'}{/block}

{block name='page_content_container'}
  <section id="content" class="page-content page-authentication">
    <div id="register-container">
      {block name='register_container'}
        <header>
          <h2>{l s='Create an account'}</h2>
          <p>Creando un account, sarai in grado di velocizzare il processo di acquisto più velocemente, salvando i tuoi indirizzi e metodi di pagamento, inoltre il tuo carrello rimarrà memorizzato e disponibile per le prossime visite.</p>
        </header>
        <section class="register-form">
          <a href="{$urls.pages.register}" data-link-action="display-register-form">Registrati</a>
        </section>   
      {/block}
    </div>
    <div id="login_form_container">
      {block name='login_form_container'}
        <header>
          <h2>{l s='Log in to your account'}</h2>
          <p>Inserisci i tuoi dati</p>
        </header>
        <section class="login-form">
          {render file='customer/_partials/login-form.tpl' ui=$login_form}
        </section>
        {block name='display_after_login_form'}
          {hook h='displayCustomerLoginFormAfter'}
        {/block}      
      {/block}
    </div>
  </section>
{/block}
