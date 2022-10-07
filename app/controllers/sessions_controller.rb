class SessionsController < ApplicationController
  
  def index
    byebug
    session[:session_hello] ||= "World"  #Sessions is secure version of cookies and uses cryptography to encrypt the data in the cookes instead of sending it back as a plain text.
    cookies[:cookies_hello] ||= "World"  #The '||=' sign assigns a value to a variable if the value of the variable is  nil at the moment.If it is not nil it assigns it another value.
    render json: { session: session, cookies: cookies.to_hash }
    #Nb:in the browser, looking at the cookies data, it can be seen and deciphered while that of the session is cyphered in hashed object and its contents cannot be deciphered
    #Cookies are specific to one domain 
  end

end
