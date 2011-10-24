/**
 * OWASP Enterprise Security API (ESAPI)
 * 
 * This file is part of the Open Web Application Security Project (OWASP)
 * Enterprise Security API (ESAPI) project. For details, please see
 * <a href="http://www.owasp.org/index.php/ESAPI">http://www.owasp.org/index.php/ESAPI</a>.
 *
 * Copyright (c) 2011 - The OWASP Foundation
 * 
 * The ESAPI is published by OWASP under the BSD license. You should read and accept the
 * LICENSE before you use, modify, and/or redistribute this software.
 * 
 * @author Damon Miller
 * @created 2011
 */
/**
 * The ANONYMOUS user is used to represent an unidentified user. Since there is
 * always a real user, the ANONYMOUS user is better than using null to represent
 * this.
 */
component ANONYMOUS implements="cfesapi.org.owasp.esapi.User" {

	// imports
	RuntimeException = createObject("java", "java.lang.RuntimeException");

	instance.ESAPI = "";

	instance.csrfToken = "";
	instance.sessions = [];
	instance.locale = "";

	public function init(required cfesapi.org.owasp.esapi.ESAPI ESAPI) {
		instance.ESAPI = arguments.ESAPI;
		return this;
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public void function addRole(required String role) {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public void function addRoles(required Array newRoles) {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public void function changePassword(required String oldPassword, 
	                                    required String newPassword1,
	                                    required String newPassword2) {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public void function disable() {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public void function enable() {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public numeric function getAccountId() {
		return 0;
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public String function getAccountName() {
		return "Anonymous";
	}
	
	/**
	 * Alias method that is equivalent to getAccountName()
	 * 
	 * @return the name of the current user's account
	 */
	
	public String function getName() {
		return getAccountName();
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public String function getCSRFToken() {
		return instance.csrfToken;
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public function getExpirationTime() {
		return "";
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public numeric function getFailedLoginCount() {
		return 0;
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public function getLastFailedLoginTime() {
		return "";
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public String function getLastHostAddress() {
		return "unknown";
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public function getLastLoginTime() {
		return "";
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public function getLastPasswordChangeTime() {
		return "";
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public Array function getRoles() {
		return [];
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public String function getScreenName() {
		return "Anonymous";
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public void function addSession(required s) {
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public void function removeSession(required s) {
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public Array function getSessions() {
		return instance.sessions;
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public void function incrementFailedLoginCount() {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public boolean function isAnonymous() {
		return true;
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public boolean function isEnabled() {
		return false;
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public boolean function isExpired() {
		return false;
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public boolean function isInRole(required String role) {
		return false;
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public boolean function isLocked() {
		return false;
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public boolean function isLoggedIn() {
		return false;
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public boolean function isSessionAbsoluteTimeout() {
		return false;
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public boolean function isSessionTimeout() {
		return false;
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public void function lock() {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public void function loginWithPassword(cfesapi.org.owasp.esapi.HttpServletRequest request, required String password) {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public void function logout() {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public void function removeRole(required String role) throws AuthenticationException {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public String function resetCSRFToken() {
		instance.csrfToken = instance.ESAPI.randomizer().getRandomString(8, createObject("java", "org.owasp.esapi.Encoder").CHAR_ALPHANUMERICS);
		return instance.csrfToken;
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public void function setAccountName(required String accountName) {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public void function setExpirationTime(required Date expirationTime) {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public void function setRoles(required Array roles) throws AuthenticationException {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public void function setScreenName(required String screenName) {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public void function unlock() {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public boolean function verifyPassword(required String password) throws EncryptionException {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public void function setLastFailedLoginTime(required Date lastFailedLoginTime) {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public void function setLastLoginTime(required Date lastLoginTime) {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public void function setLastHostAddress(required String remoteHost) {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	* {@inheritDoc}
	*/
	
	public void function setLastPasswordChangeTime(required Date lastPasswordChangeTime) {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	 *  {@inheritDoc}
	 */
	
	public Struct function getEventMap() {
		throw(object=RuntimeException.init("Invalid operation for the anonymous user"));
	}
	
	/**
	* @return the locale
	*/
	
	public function getLocale() {
		return instance.locale;
	}
	
	/**
	 * @param locale the locale to set
	 */
	
	public void function setLocale(required locale) {
		if(isInstanceOf(arguments.locale, "java.util.Locale")) {
			instance.locale = arguments.locale;
		}
		else {
			instance.locale = "";
		}
	}
	
	/**
	 * {@inheritDoc}
	 *
	 * @return
	 */
	
	public String function toString() {
		return "USER:" & getAccountName();
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public boolean function isEquals(required another) {
		// TODO
	}
	
	/**
	 * {@inheritDoc}
	 */
	
	public numeric function hashCode() {
		// TODO
	}
	
}