<cfcomponent extends="cfesapi.test.org.owasp.esapi.TestCase" output="false">

	<cfscript>
		System = createObject("java", "java.lang.System");

		instance.ESAPI = "";
		instance.accessController = "";
	</cfscript>

	<cffunction access="public" returntype="void" name="setUp" output="false">
		<cfscript>
			structClear(session);
			structClear(request);

			instance.ESAPI = createObject("component", "cfesapi.org.owasp.esapi.ESAPI");
			instance.accessController = instance.ESAPI.accessController();
		</cfscript>
	</cffunction>


	<cffunction access="public" returntype="void" name="tearDown" output="false">
		<cfscript>
			instance.ESAPI = "";
			instance.accessController = "";

			structClear(session);
			structClear(request);
		</cfscript>
	</cffunction>

	<cffunction access="public" returntype="void" name="testSetup" output="false" hint="This tests the policy file">
		<cfscript>
			local.policyDescriptor = createObject("cfesapi.org.owasp.esapi.reference.accesscontrol.policyloader.ACRPolicyFileLoader").init(instance.ESAPI);
			local.policyDTO = local.policyDescriptor.load();
			local.accessControlRules = local.policyDTO.getAccessControlRules();
			assertTrue(!local.accessControlRules.isEmpty(), "Some AccessControlRules are loaded");
			assertTrue(local.accessControlRules.containsKey("AlwaysTrue"), "Access Control Map Contains AlwaysTrue");
			assertTrue(local.accessControlRules.containsKey("AlwaysFalse"), "Access Control Map Contains AlwaysFalse");
			assertTrue(local.accessControlRules.containsKey("EchoRuntimeParameter"), "Access Control Map Contains EchoRuntimeParameter");
			assertTrue(local.accessControlRules.containsKey("EchoPolicyParameter"), "Access Control Map Contains EchoPolicyParameter");
		</cfscript>
	</cffunction>

</cfcomponent>