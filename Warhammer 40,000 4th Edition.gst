<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem name="Warhammer 40,000 4th Edition" id="sys-b41a-8226-286b-0dea" authorName="Kothra" battleScribeVersion="2.03" publicationId="c0d3-c074-f54c-9ec4" revision="6" type="gameSystem" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <categoryEntries>
    <categoryEntry name="HQ" id="0d45-9523-cfd8-4efd" hidden="false"/>
    <categoryEntry name="Elites" id="39ab-2bcd-49d1-cfef" hidden="false"/>
    <categoryEntry name="Troops" id="23e2-2a28-50f4-a3c1" hidden="false"/>
    <categoryEntry name="Fast Attack" id="11cf-dc94-5c14-2c2a" hidden="false"/>
    <categoryEntry name="Heavy Support" id="6a52-1951-5b0c-024e" hidden="false"/>
    <categoryEntry name="Force Customization" id="7466-cf81-3a11-64ab" hidden="false"/>
    <categoryEntry name="Character" id="c918-96c1-1ff1-3df1" hidden="false">
      <infoLinks>
        <infoLink name="Character" id="ef1a-f9b1-cc1d-691d" hidden="false" targetId="ff9d-2579-a056-981b" type="rule"/>
      </infoLinks>
    </categoryEntry>
    <categoryEntry name="Additional Units" id="0589-7c29-bfa2-d566" hidden="false"/>
    <categoryEntry name="Blood Angel" id="e39c-0852-74f1-402d" hidden="false"/>
    <categoryEntry name="Space Wolf" id="407e-febc-7e2c-0621" hidden="false"/>
    <categoryEntry name="Forge World" id="087b-1c16-81ac-ce0d" hidden="false"/>
  </categoryEntries>
  <conditions>
    <condition childId="05d3-c467-46be-4952" field="selections" scope="root-entry" shared="true" type="instanceOf" value="1"/>
  </conditions>
  <costTypes>
    <costType name="Points" id="4deb-313d-6685-f48b" defaultCostLimit="-1"/>
  </costTypes>
  <forceEntries>
    <forceEntry name="Standard Mission" id="916a-7942-cedc-170c" hidden="false" sortIndex="1">
      <categoryLinks>
        <categoryLink name="Force Customization" id="2536-580a-6798-ea9f" hidden="false" targetId="7466-cf81-3a11-64ab"/>
        <categoryLink name="HQ" id="7d81-9036-eb2e-ffe7" hidden="false" targetId="0d45-9523-cfd8-4efd">
          <constraints>
            <constraint id="b6a4-21a2-f8d1-a5ed" field="selections" includeChildSelections="true" scope="parent" shared="true" type="min" value="0"/>
            <constraint id="1d22-b166-75a7-cd9d" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="0"/>
          </constraints>
          <modifiers>
            <modifier field="b6a4-21a2-f8d1-a5ed" type="set" value="1">
              <conditions>
                <condition childId="407e-febc-7e2c-0621" childName="Space Wolf" field="selections" includeChildSelections="true" scope="force" shared="true" type="equalTo" value="0"/>
              </conditions>
            </modifier>
            <modifier field="1d22-b166-75a7-cd9d" type="set" value="2">
              <conditions>
                <condition childId="407e-febc-7e2c-0621" childName="Space Wolf" field="selections" includeChildSelections="true" scope="force" shared="true" type="equalTo" value="0"/>
              </conditions>
            </modifier>
            <modifier field="1d22-b166-75a7-cd9d" type="increment" value="1">
              <conditions>
                <condition childId="3d97-8e4b-f2f4-5ead" childName="The Emperor&apos;s Champion" field="selections" scope="parent" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
            <modifier field="b6a4-21a2-f8d1-a5ed" type="increment" value="1">
              <conditions>
                <condition childId="3d97-8e4b-f2f4-5ead" childName="The Emperor&apos;s Champion" field="selections" scope="parent" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
            <modifier field="b6a4-21a2-f8d1-a5ed" type="increment" value="1">
              <repeats>
                <repeat childId="407e-febc-7e2c-0621" childName="Space Wolf" field="4deb-313d-6685-f48b" includeChildSelections="true" percentValue="false" repeats="1" roundUp="true" scope="parent" shared="true" value="750"/>
              </repeats>
            </modifier>
            <modifier field="1d22-b166-75a7-cd9d" type="increment" value="1">
              <repeats>
                <repeat childId="407e-febc-7e2c-0621" childName="Space Wolf" field="4deb-313d-6685-f48b" includeChildSelections="true" percentValue="false" repeats="1" roundUp="true" scope="parent" shared="true" value="750"/>
              </repeats>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Additional Units" id="127f-8dd1-cf9d-64c0" hidden="false" targetId="0589-7c29-bfa2-d566"/>
        <categoryLink name="Elites" id="9adf-cce0-a1a7-22e2" hidden="false" targetId="39ab-2bcd-49d1-cfef">
          <constraints>
            <constraint id="d518-1c27-da4e-764e" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="3"/>
          </constraints>
          <modifiers>
            <modifier field="d518-1c27-da4e-764e" type="decrement" value="1">
              <conditions>
                <condition childId="93eb-aee0-ad90-7026" field="selections" includeChildSelections="true" scope="force" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Troops" id="964c-b8a7-2a6a-26ad" hidden="false" targetId="23e2-2a28-50f4-a3c1">
          <constraints>
            <constraint id="64fe-3999-b9ed-7453" field="selections" includeChildSelections="true" scope="parent" shared="true" type="min" value="2"/>
            <constraint id="1511-9e96-1d39-3410" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="6"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Fast Attack" id="b275-7f49-e852-3b41" hidden="false" targetId="11cf-dc94-5c14-2c2a">
          <constraints>
            <constraint id="6b58-931d-0ea2-899a" field="selections" includeChildSelections="true" scope="force" shared="true" type="max" value="3"/>
          </constraints>
          <modifiers>
            <modifier field="6b58-931d-0ea2-899a" type="decrement" value="1">
              <conditions>
                <condition childId="93eb-aee0-ad90-7026" field="selections" includeChildSelections="true" scope="force" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Heavy Support" id="877c-e72e-5cdb-5f3f" hidden="false" targetId="6a52-1951-5b0c-024e">
          <constraints>
            <constraint id="1690-5ebc-d328-e12a" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="3"/>
          </constraints>
          <modifiers>
            <modifier field="1690-5ebc-d328-e12a" type="decrement" value="1">
              <conditions>
                <condition childId="93eb-aee0-ad90-7026" field="selections" includeChildSelections="true" scope="force" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
          </modifiers>
        </categoryLink>
      </categoryLinks>
    </forceEntry>
    <forceEntry name="Combat Patrol" id="2832-d19a-d1f8-0cf5" hidden="true" sortIndex="9">
      <categoryLinks>
        <categoryLink name="HQ" id="e4ca-4226-9f1a-3f6c" hidden="false" targetId="0d45-9523-cfd8-4efd">
          <constraints>
            <constraint id="a483-4e42-a5b8-3273" field="selections" scope="parent" shared="true" type="max" value="1"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Troops" id="a586-a29b-a217-f90f" hidden="false" targetId="23e2-2a28-50f4-a3c1">
          <constraints>
            <constraint id="7bd4-aafa-ffa0-feda" field="selections" scope="parent" shared="true" type="min" value="1"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Elites" id="532e-6ebb-c487-dc5b" hidden="false" targetId="39ab-2bcd-49d1-cfef"/>
        <categoryLink name="Fast Attack" id="f24b-158c-431c-87c9" hidden="false" targetId="11cf-dc94-5c14-2c2a"/>
        <categoryLink name="Heavy Support" id="f69b-463e-4b7d-68d3" hidden="false" targetId="6a52-1951-5b0c-024e"/>
      </categoryLinks>
      <constraints>
        <constraint id="09ce-d3c4-346c-604e" field="4deb-313d-6685-f48b" includeChildForces="true" includeChildSelections="true" scope="roster" shared="true" type="max" value="400"/>
      </constraints>
    </forceEntry>
    <forceEntry name="Battle Mission - Attacker" id="9cb1-1b49-9de4-2daa" hidden="false" sortIndex="2">
      <categoryLinks>
        <categoryLink name="Force Customization" id="e3a7-48b1-68ce-a031" hidden="false" targetId="7466-cf81-3a11-64ab"/>
        <categoryLink name="HQ" id="2801-71d6-0e0c-3a96" hidden="false" targetId="0d45-9523-cfd8-4efd">
          <constraints>
            <constraint id="10af-e430-0879-8adb" field="selections" includeChildSelections="true" scope="parent" shared="true" type="min" value="0"/>
            <constraint id="3bc3-96db-2c33-0816" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="0"/>
          </constraints>
          <modifiers>
            <modifier field="10af-e430-0879-8adb" type="set" value="1">
              <conditions>
                <condition childId="407e-febc-7e2c-0621" childName="Space Wolf" field="selections" includeChildSelections="true" scope="force" shared="true" type="equalTo" value="0"/>
              </conditions>
            </modifier>
            <modifier field="3bc3-96db-2c33-0816" type="set" value="2">
              <conditions>
                <condition childId="407e-febc-7e2c-0621" childName="Space Wolf" field="selections" includeChildSelections="true" scope="force" shared="true" type="equalTo" value="0"/>
              </conditions>
            </modifier>
            <modifier field="3bc3-96db-2c33-0816" type="increment" value="1">
              <conditions>
                <condition childId="3d97-8e4b-f2f4-5ead" childName="The Emperor&apos;s Champion" field="selections" scope="parent" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
            <modifier field="10af-e430-0879-8adb" type="increment" value="1">
              <conditions>
                <condition childId="3d97-8e4b-f2f4-5ead" childName="The Emperor&apos;s Champion" field="selections" scope="parent" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
            <modifier field="10af-e430-0879-8adb" type="increment" value="1">
              <repeats>
                <repeat childId="407e-febc-7e2c-0621" childName="Space Wolf" field="4deb-313d-6685-f48b" includeChildSelections="true" percentValue="false" repeats="1" roundUp="true" scope="parent" shared="true" value="750"/>
              </repeats>
            </modifier>
            <modifier field="3bc3-96db-2c33-0816" type="increment" value="1">
              <repeats>
                <repeat childId="407e-febc-7e2c-0621" childName="Space Wolf" field="4deb-313d-6685-f48b" includeChildSelections="true" percentValue="false" repeats="1" roundUp="true" scope="parent" shared="true" value="750"/>
              </repeats>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Additional Units" id="a83b-59c4-7635-dcbf" hidden="false" targetId="0589-7c29-bfa2-d566"/>
        <categoryLink name="Elites" id="a1ce-105d-2439-cad4" hidden="false" targetId="39ab-2bcd-49d1-cfef">
          <constraints>
            <constraint id="a3f0-e919-42a8-f60b" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="3"/>
          </constraints>
          <modifiers>
            <modifier field="a3f0-e919-42a8-f60b" type="decrement" value="1">
              <conditions>
                <condition childId="93eb-aee0-ad90-7026" field="selections" includeChildSelections="true" scope="force" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Troops" id="5460-f559-20e0-5bd9" hidden="false" targetId="23e2-2a28-50f4-a3c1">
          <constraints>
            <constraint id="d49d-e86e-ae88-6ae8" field="selections" includeChildSelections="true" scope="parent" shared="true" type="min" value="1"/>
            <constraint id="4ff7-e05c-7cab-4788" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="6"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Fast Attack" id="d42d-39fa-edb6-36dc" hidden="false" targetId="11cf-dc94-5c14-2c2a">
          <constraints>
            <constraint id="2615-3bd3-4974-14b3" field="selections" includeChildSelections="true" scope="force" shared="true" type="max" value="3"/>
          </constraints>
          <modifiers>
            <modifier field="2615-3bd3-4974-14b3" type="decrement" value="1">
              <conditions>
                <condition childId="93eb-aee0-ad90-7026" field="selections" includeChildSelections="true" scope="force" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Heavy Support" id="10d0-7d67-f95a-e7b8" hidden="false" targetId="6a52-1951-5b0c-024e">
          <constraints>
            <constraint id="5933-3947-1e3e-9589" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="3"/>
            <constraint id="97c9-c3b4-07d6-7a74" automatic="false" field="selections" includeChildSelections="true" scope="parent" shared="true" type="min" value="1"/>
          </constraints>
          <modifiers>
            <modifier field="5933-3947-1e3e-9589" type="decrement" value="1">
              <conditions>
                <condition childId="93eb-aee0-ad90-7026" field="selections" includeChildSelections="true" scope="force" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
          </modifiers>
        </categoryLink>
      </categoryLinks>
    </forceEntry>
    <forceEntry name="Raid Mission - Defender" id="4001-8a94-23a3-d72c" hidden="false" sortIndex="5">
      <categoryLinks>
        <categoryLink name="Force Customization" id="235f-eb2d-560b-0309" hidden="false" targetId="7466-cf81-3a11-64ab"/>
        <categoryLink name="HQ" id="a213-1915-1e86-cbdc" hidden="false" targetId="0d45-9523-cfd8-4efd">
          <constraints>
            <constraint id="8c7f-1ab9-79c7-6384" field="selections" includeChildSelections="true" scope="parent" shared="true" type="min" value="0"/>
            <constraint id="9d2c-9275-a142-ea85" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="0"/>
          </constraints>
          <modifiers>
            <modifier field="9d2c-9275-a142-ea85" type="set" value="1">
              <conditions>
                <condition childId="407e-febc-7e2c-0621" childName="Space Wolf" field="selections" includeChildSelections="true" scope="force" shared="true" type="equalTo" value="0"/>
              </conditions>
            </modifier>
            <modifier field="9d2c-9275-a142-ea85" type="increment" value="1">
              <conditions>
                <condition childId="3d97-8e4b-f2f4-5ead" childName="The Emperor&apos;s Champion" field="selections" scope="parent" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
            <modifier field="8c7f-1ab9-79c7-6384" type="increment" value="1">
              <conditions>
                <condition childId="3d97-8e4b-f2f4-5ead" childName="The Emperor&apos;s Champion" field="selections" scope="parent" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
            <modifier field="8c7f-1ab9-79c7-6384" type="increment" value="1">
              <repeats>
                <repeat childId="407e-febc-7e2c-0621" childName="Space Wolf" field="4deb-313d-6685-f48b" includeChildSelections="true" percentValue="false" repeats="1" roundUp="true" scope="parent" shared="true" value="750"/>
              </repeats>
            </modifier>
            <modifier field="9d2c-9275-a142-ea85" type="increment" value="1">
              <repeats>
                <repeat childId="407e-febc-7e2c-0621" childName="Space Wolf" field="4deb-313d-6685-f48b" includeChildSelections="true" percentValue="false" repeats="1" roundUp="true" scope="parent" shared="true" value="750"/>
              </repeats>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Additional Units" id="abf4-be50-88e9-e6a6" hidden="false" targetId="0589-7c29-bfa2-d566"/>
        <categoryLink name="Elites" id="971f-49bd-d483-2f9f" hidden="false" targetId="39ab-2bcd-49d1-cfef">
          <constraints>
            <constraint id="0ce0-9aad-368b-4a18" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="1"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Troops" id="cc07-bf12-addb-fdb7" hidden="false" targetId="23e2-2a28-50f4-a3c1">
          <constraints>
            <constraint id="5813-42e6-8af8-5394" field="selections" includeChildSelections="true" scope="parent" shared="true" type="min" value="2"/>
            <constraint id="460d-baba-9852-0951" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="6"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Fast Attack" id="875c-f097-be63-2afe" hidden="false" targetId="11cf-dc94-5c14-2c2a">
          <constraints>
            <constraint id="3db1-883e-3b7b-ac43" field="selections" includeChildSelections="true" scope="force" shared="true" type="max" value="1"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Heavy Support" id="10a5-b68e-b473-1cba" hidden="false" targetId="6a52-1951-5b0c-024e">
          <constraints>
            <constraint id="c769-dac5-d5ff-830c" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="2"/>
          </constraints>
          <modifiers>
            <modifier field="c769-dac5-d5ff-830c" type="decrement" value="1">
              <conditions>
                <condition childId="93eb-aee0-ad90-7026" field="selections" includeChildSelections="true" scope="force" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
          </modifiers>
        </categoryLink>
      </categoryLinks>
    </forceEntry>
    <forceEntry name="Battle Mission - Defender" id="8559-6eda-091c-c37a" hidden="false" sortIndex="3">
      <categoryLinks>
        <categoryLink name="Force Customization" id="3b5f-e91f-a234-f229" hidden="false" targetId="7466-cf81-3a11-64ab"/>
        <categoryLink name="HQ" id="8f5e-10c1-0a84-60c4" hidden="false" targetId="0d45-9523-cfd8-4efd">
          <constraints>
            <constraint id="03ff-f5e0-2541-e5de" field="selections" includeChildSelections="true" scope="parent" shared="true" type="min" value="0"/>
            <constraint id="8043-5482-f9c4-8a4f" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="0"/>
          </constraints>
          <modifiers>
            <modifier field="03ff-f5e0-2541-e5de" type="set" value="1">
              <conditions>
                <condition childId="407e-febc-7e2c-0621" childName="Space Wolf" field="selections" includeChildSelections="true" scope="force" shared="true" type="equalTo" value="0"/>
              </conditions>
            </modifier>
            <modifier field="8043-5482-f9c4-8a4f" type="set" value="1">
              <conditions>
                <condition childId="407e-febc-7e2c-0621" childName="Space Wolf" field="selections" includeChildSelections="true" scope="force" shared="true" type="equalTo" value="0"/>
              </conditions>
            </modifier>
            <modifier field="8043-5482-f9c4-8a4f" type="increment" value="1">
              <conditions>
                <condition childId="3d97-8e4b-f2f4-5ead" childName="The Emperor&apos;s Champion" field="selections" scope="parent" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
            <modifier field="03ff-f5e0-2541-e5de" type="increment" value="1">
              <conditions>
                <condition childId="3d97-8e4b-f2f4-5ead" childName="The Emperor&apos;s Champion" field="selections" scope="parent" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
            <modifier field="03ff-f5e0-2541-e5de" type="increment" value="1">
              <repeats>
                <repeat childId="407e-febc-7e2c-0621" childName="Space Wolf" field="4deb-313d-6685-f48b" includeChildSelections="true" percentValue="false" repeats="1" roundUp="true" scope="parent" shared="true" value="750"/>
              </repeats>
            </modifier>
            <modifier field="8043-5482-f9c4-8a4f" type="increment" value="1">
              <repeats>
                <repeat childId="407e-febc-7e2c-0621" childName="Space Wolf" field="4deb-313d-6685-f48b" includeChildSelections="true" percentValue="false" repeats="1" roundUp="true" scope="parent" shared="true" value="750"/>
              </repeats>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Additional Units" id="8b88-1666-6880-c7ee" hidden="false" targetId="0589-7c29-bfa2-d566"/>
        <categoryLink name="Elites" id="c31e-981a-4c2d-20ec" hidden="false" targetId="39ab-2bcd-49d1-cfef">
          <constraints>
            <constraint id="98c9-5b11-6172-9d62" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="3"/>
          </constraints>
          <modifiers>
            <modifier field="98c9-5b11-6172-9d62" type="decrement" value="1">
              <conditions>
                <condition childId="93eb-aee0-ad90-7026" field="selections" includeChildSelections="true" scope="force" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Troops" id="9213-cf21-e97b-2973" hidden="false" targetId="23e2-2a28-50f4-a3c1">
          <constraints>
            <constraint id="8e30-4dd7-5bad-dd35" field="selections" includeChildSelections="true" scope="parent" shared="true" type="min" value="2"/>
            <constraint id="ef3d-6ec1-7b0a-709f" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="6"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Fast Attack" id="4fd3-3c6c-ef8a-b917" hidden="false" targetId="11cf-dc94-5c14-2c2a">
          <constraints>
            <constraint id="fe37-1b6b-de9b-fffa" field="selections" includeChildSelections="true" scope="force" shared="true" type="max" value="1"/>
          </constraints>
          <modifiers>
            <modifier field="fe37-1b6b-de9b-fffa" type="decrement" value="1">
              <conditions>
                <condition childId="93eb-aee0-ad90-7026" field="selections" includeChildSelections="true" scope="force" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Heavy Support" id="532f-48b7-2f8f-273b" hidden="false" targetId="6a52-1951-5b0c-024e">
          <constraints>
            <constraint id="7959-470f-0354-edfc" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="3"/>
          </constraints>
          <modifiers>
            <modifier field="7959-470f-0354-edfc" type="decrement" value="1">
              <conditions>
                <condition childId="93eb-aee0-ad90-7026" field="selections" includeChildSelections="true" scope="force" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
          </modifiers>
        </categoryLink>
      </categoryLinks>
    </forceEntry>
    <forceEntry name="Raid Mission - Attacker" id="3475-8b1d-88af-e539" hidden="false" sortIndex="4">
      <categoryLinks>
        <categoryLink name="Force Customization" id="3567-dd51-3e0e-73f1" hidden="false" targetId="7466-cf81-3a11-64ab"/>
        <categoryLink name="HQ" id="f548-d695-01a0-f79a" hidden="false" targetId="0d45-9523-cfd8-4efd">
          <constraints>
            <constraint id="2444-9e3f-b770-cead" field="selections" includeChildSelections="true" scope="parent" shared="true" type="min" value="0"/>
            <constraint id="2158-7e09-6dfa-3f43" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="0"/>
          </constraints>
          <modifiers>
            <modifier field="2444-9e3f-b770-cead" type="set" value="1">
              <conditions>
                <condition childId="407e-febc-7e2c-0621" childName="Space Wolf" field="selections" includeChildSelections="true" scope="force" shared="true" type="equalTo" value="0"/>
              </conditions>
            </modifier>
            <modifier field="2158-7e09-6dfa-3f43" type="set" value="2">
              <conditions>
                <condition childId="407e-febc-7e2c-0621" childName="Space Wolf" field="selections" includeChildSelections="true" scope="force" shared="true" type="equalTo" value="0"/>
              </conditions>
            </modifier>
            <modifier field="2158-7e09-6dfa-3f43" type="increment" value="1">
              <conditions>
                <condition childId="3d97-8e4b-f2f4-5ead" childName="The Emperor&apos;s Champion" field="selections" scope="parent" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
            <modifier field="2444-9e3f-b770-cead" type="increment" value="1">
              <conditions>
                <condition childId="3d97-8e4b-f2f4-5ead" childName="The Emperor&apos;s Champion" field="selections" scope="parent" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
            <modifier field="2444-9e3f-b770-cead" type="increment" value="1">
              <repeats>
                <repeat childId="407e-febc-7e2c-0621" childName="Space Wolf" field="4deb-313d-6685-f48b" includeChildSelections="true" percentValue="false" repeats="1" roundUp="true" scope="parent" shared="true" value="750"/>
              </repeats>
            </modifier>
            <modifier field="2158-7e09-6dfa-3f43" type="increment" value="1">
              <repeats>
                <repeat childId="407e-febc-7e2c-0621" childName="Space Wolf" field="4deb-313d-6685-f48b" includeChildSelections="true" percentValue="false" repeats="1" roundUp="true" scope="parent" shared="true" value="750"/>
              </repeats>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Additional Units" id="4f34-3bfa-393e-0bb9" hidden="false" targetId="0589-7c29-bfa2-d566"/>
        <categoryLink name="Elites" id="c3ca-6ad2-fb89-7473" hidden="false" targetId="39ab-2bcd-49d1-cfef">
          <constraints>
            <constraint id="5984-62d8-f398-f6bf" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="3"/>
            <constraint id="355d-faf9-053c-bdcd" field="selections" includeChildSelections="true" scope="parent" shared="true" type="min" value="1"/>
          </constraints>
          <modifiers>
            <modifier field="5984-62d8-f398-f6bf" type="decrement" value="1">
              <conditions>
                <condition childId="93eb-aee0-ad90-7026" field="selections" includeChildSelections="true" scope="force" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Troops" id="1ab8-98f1-f622-09f0" hidden="false" targetId="23e2-2a28-50f4-a3c1">
          <constraints>
            <constraint id="11bc-5e61-45e3-6382" field="selections" includeChildSelections="true" scope="parent" shared="true" type="min" value="0"/>
            <constraint id="db71-62ab-0a95-310e" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="5"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Fast Attack" id="aad1-51ec-44b2-8f68" hidden="false" targetId="11cf-dc94-5c14-2c2a">
          <constraints>
            <constraint id="26d3-6772-1493-1aa4" field="selections" includeChildSelections="true" scope="force" shared="true" type="max" value="3"/>
          </constraints>
          <modifiers>
            <modifier field="26d3-6772-1493-1aa4" type="decrement" value="1">
              <conditions>
                <condition childId="93eb-aee0-ad90-7026" field="selections" includeChildSelections="true" scope="force" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Heavy Support" id="d418-3165-6917-d226" hidden="false" targetId="6a52-1951-5b0c-024e">
          <constraints>
            <constraint id="a123-1527-7a1e-f33c" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="1"/>
          </constraints>
        </categoryLink>
      </categoryLinks>
    </forceEntry>
    <forceEntry name="Breakthrough Mission - Defender" id="3678-eca4-4b81-3a61" hidden="false" sortIndex="7">
      <categoryLinks>
        <categoryLink name="Force Customization" id="abd6-ad76-87ff-f4f4" hidden="false" targetId="7466-cf81-3a11-64ab"/>
        <categoryLink name="HQ" id="6b9f-3833-71da-cf27" hidden="false" targetId="0d45-9523-cfd8-4efd">
          <constraints>
            <constraint id="f397-c64c-7526-2854" field="selections" includeChildSelections="true" scope="parent" shared="true" type="min" value="0"/>
            <constraint id="a0d0-bbcd-0678-26ba" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="0"/>
          </constraints>
          <modifiers>
            <modifier field="f397-c64c-7526-2854" type="set" value="0">
              <conditions>
                <condition childId="407e-febc-7e2c-0621" childName="Space Wolf" field="selections" includeChildSelections="true" scope="force" shared="true" type="equalTo" value="0"/>
              </conditions>
            </modifier>
            <modifier field="a0d0-bbcd-0678-26ba" type="set" value="1">
              <conditions>
                <condition childId="407e-febc-7e2c-0621" childName="Space Wolf" field="selections" includeChildSelections="true" scope="force" shared="true" type="equalTo" value="0"/>
              </conditions>
            </modifier>
            <modifier field="a0d0-bbcd-0678-26ba" type="increment" value="1">
              <conditions>
                <condition childId="3d97-8e4b-f2f4-5ead" childName="The Emperor&apos;s Champion" field="selections" scope="parent" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
            <modifier field="f397-c64c-7526-2854" type="increment" value="1">
              <conditions>
                <condition childId="3d97-8e4b-f2f4-5ead" childName="The Emperor&apos;s Champion" field="selections" scope="parent" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
            <modifier field="f397-c64c-7526-2854" type="increment" value="1">
              <repeats>
                <repeat childId="407e-febc-7e2c-0621" childName="Space Wolf" field="4deb-313d-6685-f48b" includeChildSelections="true" percentValue="false" repeats="1" roundUp="true" scope="parent" shared="true" value="750"/>
              </repeats>
            </modifier>
            <modifier field="a0d0-bbcd-0678-26ba" type="increment" value="1">
              <repeats>
                <repeat childId="407e-febc-7e2c-0621" childName="Space Wolf" field="4deb-313d-6685-f48b" includeChildSelections="true" percentValue="false" repeats="1" roundUp="true" scope="parent" shared="true" value="750"/>
              </repeats>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Additional Units" id="06ba-8569-3a27-0cd9" hidden="false" targetId="0589-7c29-bfa2-d566"/>
        <categoryLink name="Elites" id="822a-cdf2-74a6-eda5" hidden="false" targetId="39ab-2bcd-49d1-cfef">
          <constraints>
            <constraint id="91ec-1294-a105-6bf2" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="2"/>
          </constraints>
          <modifiers>
            <modifier field="91ec-1294-a105-6bf2" type="decrement" value="1">
              <conditions>
                <condition childId="93eb-aee0-ad90-7026" field="selections" includeChildSelections="true" scope="force" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Troops" id="4ec3-da10-a0eb-57e3" hidden="false" targetId="23e2-2a28-50f4-a3c1">
          <constraints>
            <constraint id="6347-41f7-6a10-4c9a" field="selections" includeChildSelections="true" scope="parent" shared="true" type="min" value="2"/>
            <constraint id="da6d-ab5c-f8ec-514e" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="6"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Fast Attack" id="0c46-047c-e57a-a750" hidden="false" targetId="11cf-dc94-5c14-2c2a">
          <constraints>
            <constraint id="538c-a1e7-261f-08d5" field="selections" includeChildSelections="true" scope="force" shared="true" type="max" value="1"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Heavy Support" id="dbc4-ddba-c31c-999b" hidden="false" targetId="6a52-1951-5b0c-024e">
          <constraints>
            <constraint id="345d-9f64-d221-6141" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="2"/>
          </constraints>
          <modifiers>
            <modifier field="345d-9f64-d221-6141" type="decrement" value="1">
              <conditions>
                <condition childId="93eb-aee0-ad90-7026" field="selections" includeChildSelections="true" scope="force" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
          </modifiers>
        </categoryLink>
      </categoryLinks>
    </forceEntry>
    <forceEntry name="Breakthrough Mission - Attacker" id="f61c-13ef-c795-4c65" hidden="false" sortIndex="6">
      <categoryLinks>
        <categoryLink name="Force Customization" id="7d1d-7b92-70c0-a442" hidden="false" targetId="7466-cf81-3a11-64ab"/>
        <categoryLink name="HQ" id="4919-7b2a-4a08-c456" hidden="false" targetId="0d45-9523-cfd8-4efd">
          <constraints>
            <constraint id="1037-956b-8250-6290" field="selections" includeChildSelections="true" scope="parent" shared="true" type="min" value="0"/>
            <constraint id="93b8-e517-ca64-0687" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="0"/>
          </constraints>
          <modifiers>
            <modifier field="1037-956b-8250-6290" type="set" value="0">
              <conditions>
                <condition childId="407e-febc-7e2c-0621" childName="Space Wolf" field="selections" includeChildSelections="true" scope="force" shared="true" type="equalTo" value="0"/>
              </conditions>
            </modifier>
            <modifier field="93b8-e517-ca64-0687" type="set" value="2">
              <conditions>
                <condition childId="407e-febc-7e2c-0621" childName="Space Wolf" field="selections" includeChildSelections="true" scope="force" shared="true" type="equalTo" value="0"/>
              </conditions>
            </modifier>
            <modifier field="93b8-e517-ca64-0687" type="increment" value="1">
              <conditions>
                <condition childId="3d97-8e4b-f2f4-5ead" childName="The Emperor&apos;s Champion" field="selections" scope="parent" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
            <modifier field="1037-956b-8250-6290" type="increment" value="1">
              <conditions>
                <condition childId="3d97-8e4b-f2f4-5ead" childName="The Emperor&apos;s Champion" field="selections" scope="parent" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
            <modifier field="1037-956b-8250-6290" type="increment" value="1">
              <repeats>
                <repeat childId="407e-febc-7e2c-0621" childName="Space Wolf" field="4deb-313d-6685-f48b" includeChildSelections="true" percentValue="false" repeats="1" roundUp="true" scope="parent" shared="true" value="750"/>
              </repeats>
            </modifier>
            <modifier field="93b8-e517-ca64-0687" type="increment" value="1">
              <repeats>
                <repeat childId="407e-febc-7e2c-0621" childName="Space Wolf" field="4deb-313d-6685-f48b" includeChildSelections="true" percentValue="false" repeats="1" roundUp="true" scope="parent" shared="true" value="750"/>
              </repeats>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Additional Units" id="538a-2d66-5c33-a50f" hidden="false" targetId="0589-7c29-bfa2-d566"/>
        <categoryLink name="Elites" id="53fe-cd18-e527-20ab" hidden="false" targetId="39ab-2bcd-49d1-cfef">
          <constraints>
            <constraint id="a8ac-eaac-5eb3-a62b" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="2"/>
            <constraint id="ada0-7dc0-c17b-e1dc" field="selections" includeChildSelections="true" scope="parent" shared="true" type="min" value="1"/>
          </constraints>
          <modifiers>
            <modifier field="a8ac-eaac-5eb3-a62b" type="decrement" value="1">
              <conditions>
                <condition childId="93eb-aee0-ad90-7026" field="selections" includeChildSelections="true" scope="force" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Troops" id="b862-7cf8-d86b-feec" hidden="false" targetId="23e2-2a28-50f4-a3c1">
          <constraints>
            <constraint id="b759-97f2-8c32-adf8" field="selections" includeChildSelections="true" scope="parent" shared="true" type="min" value="2"/>
            <constraint id="9646-a1cb-ec7f-a46d" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="5"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Fast Attack" id="ef35-6f43-79b9-2cbd" hidden="false" targetId="11cf-dc94-5c14-2c2a">
          <constraints>
            <constraint id="9366-fdac-1e01-2e15" field="selections" includeChildSelections="true" scope="force" shared="true" type="max" value="3"/>
          </constraints>
          <modifiers>
            <modifier field="9366-fdac-1e01-2e15" type="decrement" value="1">
              <conditions>
                <condition childId="93eb-aee0-ad90-7026" field="selections" includeChildSelections="true" scope="force" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Heavy Support" id="1ba5-6443-0f1d-a10e" hidden="false" targetId="6a52-1951-5b0c-024e">
          <constraints>
            <constraint id="e6be-352d-e86a-866c" field="selections" includeChildSelections="true" scope="parent" shared="true" type="max" value="3"/>
          </constraints>
          <modifiers>
            <modifier field="e6be-352d-e86a-866c" type="decrement" value="1">
              <conditions>
                <condition childId="93eb-aee0-ad90-7026" field="selections" includeChildSelections="true" scope="force" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
          </modifiers>
        </categoryLink>
      </categoryLinks>
    </forceEntry>
    <forceEntry name="Free Build" id="a10c-7154-23a7-a010" hidden="false" sortIndex="8">
      <categoryLinks>
        <categoryLink name="Force Customization" id="a275-e95d-8e82-d4e3" hidden="false" targetId="7466-cf81-3a11-64ab"/>
        <categoryLink name="HQ" id="ad3a-4848-cb4f-28de" hidden="false" targetId="0d45-9523-cfd8-4efd"/>
        <categoryLink name="Additional Units" id="3bb3-f75c-7798-1da9" hidden="false" targetId="0589-7c29-bfa2-d566"/>
        <categoryLink name="Elites" id="0dd4-8d2a-afda-615a" hidden="false" targetId="39ab-2bcd-49d1-cfef"/>
        <categoryLink name="Troops" id="83e7-224d-5ea3-a816" hidden="false" targetId="23e2-2a28-50f4-a3c1"/>
        <categoryLink name="Fast Attack" id="784c-d5dc-9b84-f9f6" hidden="false" targetId="11cf-dc94-5c14-2c2a"/>
        <categoryLink name="Heavy Support" id="0f30-754e-9f53-cef4" hidden="false" targetId="6a52-1951-5b0c-024e"/>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
  <profileTypes>
    <profileType name="Unit" id="556e697423232344415441232323" hidden="false" kind="model" sortIndex="1">
      <characteristicTypes>
        <characteristicType name="Unit Type" id="556e6974205479706523232344415441232323" kind="annotation"/>
        <characteristicType name="WS" id="5.753232323444154e+23"/>
        <characteristicType name="BS" id="4.2532323234441546e+23"/>
        <characteristicType name="S" id="5.323232344415441e+21"/>
        <characteristicType name="T" id="5.423232344415441e+21"/>
        <characteristicType name="W" id="5.723232344415441e+21"/>
        <characteristicType name="I" id="4.923232344415441e+21"/>
        <characteristicType name="A" id="4.123232344415441e+21"/>
        <characteristicType name="LD" id="4c4423232344415441232323"/>
        <characteristicType name="Sv" id="5.361766523232344e+27"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Transport" id="307d-047f-ca13-706b" hidden="false" kind="model" sortIndex="3">
      <characteristicTypes>
        <characteristicType name="Capacity" id="8285-4205-b6cd-8473"/>
        <characteristicType name="Fire Points" id="b270-a7f9-22b2-3702"/>
        <characteristicType name="Access Points" id="d17b-0342-b1dc-b8e7"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Vehicle" id="56656869636c6523232344415441232323" hidden="false" kind="model" sortIndex="2">
      <characteristicTypes>
        <characteristicType name="Front" id="46726f6e7423232344415441232323"/>
        <characteristicType name="Side" id="5.369646523232344e+27"/>
        <characteristicType name="Rear" id="5.265617223232345e+27"/>
        <characteristicType name="BS" id="a6a5-1595-da9e-6155"/>
        <characteristicType name="Type" id="5.479706523232345e+27"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Walker" id="57616c6b657223232344415441232323" hidden="false" kind="model" sortIndex="4">
      <characteristicTypes>
        <characteristicType name="Front" id="2c29-350b-f248-dd77"/>
        <characteristicType name="Side" id="0420-dd4d-5193-9751"/>
        <characteristicType name="Rear" id="261f-f688-43d2-6426"/>
        <characteristicType name="WS" id="cdb5-5759-7ba6-4165"/>
        <characteristicType name="BS" id="c2d0-06f8-ae22-6c79"/>
        <characteristicType name="S" id="c10b-81fc-f48d-cb9c"/>
        <characteristicType name="I" id="d3ac-4b4f-59d3-54d0"/>
        <characteristicType name="A" id="dd6f-2402-7687-9468"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Flyer" id="3a08-ea03-a598-8615" hidden="false" sortIndex="13">
      <characteristicTypes>
        <characteristicType name="BS" id="9878-e3f6-b7b4-7225"/>
        <characteristicType name="Front" id="3a4e-bc1d-4a12-7176"/>
        <characteristicType name="Side" id="d12e-7bdb-191c-4849"/>
        <characteristicType name="Rear" id="a4cb-791a-6a75-4e4a"/>
        <characteristicType name="HP" id="93e6-d4b1-28a8-944b"/>
        <characteristicType name="Type" id="eb65-838c-8eaa-8b5d"/>
        <characteristicType name="Combat Role" id="d477-c087-173f-9f1c"/>
        <characteristicType name="Pursuit" id="e04d-332e-8b52-0071"/>
        <characteristicType name="Agility" id="ae34-f5c0-19af-4883"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Psychic Power" id="ae70-4738-0161-bec0" hidden="false" sortIndex="8">
      <characteristicTypes>
        <characteristicType name="Details" id="ad96-dfa4-b4ed-656d"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Psychic Power (Attack)" id="9c33-b0c8-74bd-e5a7" hidden="false" sortIndex="9">
      <characteristicTypes>
        <characteristicType name="Range" id="5bf6-378a-0cb7-b079"/>
        <characteristicType name="Strength" id="12da-9b3e-f37b-bc35"/>
        <characteristicType name="AP" id="10b5-aa5b-ccde-79cc"/>
        <characteristicType name="Type" id="20e7-cbcb-1781-a732"/>
        <characteristicType name="Details" id="a812-390d-dff6-dabd"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Fortification/Terrain" id="c2e2-42f3-9e28-c3fa" hidden="false" sortIndex="12">
      <characteristicTypes>
        <characteristicType name="Composition" id="d34f-9153-d292-adab"/>
        <characteristicType name="Terrain type" id="98d6-2143-3017-6d46"/>
        <characteristicType name="Access Points &amp; Fire Points" id="beac-711d-f76d-e254"/>
        <characteristicType name="Weapons" id="0ecb-8865-b3eb-97c9"/>
        <characteristicType name="Options" id="a782-1362-048c-ff45"/>
        <characteristicType name="Special Rules" id="51b9-8d40-8186-fd23"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Super-heavy Walker" id="0694-6ddb-9e1d-40bd" hidden="false" kind="model" sortIndex="11">
      <characteristicTypes>
        <characteristicType name="WS" id="abd6-ed07-8491-eb85"/>
        <characteristicType name="BS" id="aabf-e6cf-1929-65fd"/>
        <characteristicType name="S" id="8d3d-332e-0576-3813"/>
        <characteristicType name="Front" id="a3b5-f395-614e-95dc"/>
        <characteristicType name="Side" id="4f2c-13a4-98b7-ff72"/>
        <characteristicType name="Rear" id="c45e-7fb0-f4c7-2909"/>
        <characteristicType name="I" id="d7de-23c6-aa99-cb87"/>
        <characteristicType name="A" id="ec4e-6e09-1493-1867"/>
        <characteristicType name="Type" id="c887-e846-fa1f-9389"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Wargear" id="57617267656172204974656d23232344415441232323" hidden="false" kind="ability" sortIndex="5">
      <characteristicTypes>
        <characteristicType name="Description" id="4465736372697074696f6e23232344415441232323"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Weapon" id="576561706f6e23232344415441232323" hidden="false" kind="weapon" sortIndex="6">
      <characteristicTypes>
        <characteristicType name="Range" id="52616e676523232344415441232323" kind="annotation"/>
        <characteristicType name="Strength" id="537472656e67746823232344415441232323" kind="annotation"/>
        <characteristicType name="AP" id="4.1502323234441545e+23" kind="annotation"/>
        <characteristicType name="Type" id="8b10-045a-f593-605e" kind="annotation"/>
        <characteristicType name="Info" id="33e9-27bd-77e4-401d" kind="longText"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Building" id="286c-0cd4-7630-47d0" hidden="false" kind="model" sortIndex="10">
      <characteristicTypes>
        <characteristicType name="Armour Value" id="83f8-a458-93f9-3e46"/>
        <characteristicType name="Transport Capacity" id="0e9c-76b3-2877-614d"/>
        <characteristicType name="Access Points" id="13de-08da-586d-f7c0"/>
        <characteristicType name="Fire Points" id="0767-d18e-a48d-3b39"/>
        <characteristicType name="Hull Points" id="d1d7-bcc6-18cd-c948"/>
        <characteristicType name="Building Type" id="ff97-f5f0-521b-eaf4"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Melee Weapon" id="b729-49a4-4123-cf00" hidden="false" kind="weapon" sortIndex="7">
      <characteristicTypes>
        <characteristicType name="Details" id="acf3-d214-6e51-29fe"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <publications>
    <publication name="Warhammer 40,000 4th Edition Rulebook" id="c0d3-c074-f54c-9ec4" hidden="false" publicationDate="2004/08/28" publisher="Warhammer 40,000 4th Edition Rulebook" publisherUrl="https://wh40k.lexicanum.com/wiki/Warhammer_40,000_4th_Edition_Rulebook" shortName="BRB"/>
    <publication name="Codex: Space Marines (2004)" id="e1e7-bf54-15e0-5ded" hidden="false" publicationDate="2004/11" publisher="Codex: Space Marines (2004)" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Space_Marines_(4th_Edition)" shortName="SM04"/>
    <publication name="Codex: Space Marines (1998)" id="e621-2cd6-fe95-920f" hidden="false" publicationDate="1998/10" publisher="Codex: Space Marines (1998)" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Space_Marines_(3rd_Edition)" shortName="SM98"/>
    <publication name="Codex: Tyranids (2004)" id="9c6c-1458-d64a-97dc" hidden="false" publicationDate="2005" publisher="Codex: Tyranids (2004)" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Tyranids_(4th_Edition)" shortName="TY04"/>
    <publication name="Codex: Tyranids (2001)" id="91d3-0dc5-14ce-19e2" hidden="false" publicationDate="2001" publisher="Codex: Tyranids (2001)" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Tyranids_(3rd_Edition)" shortName="TY01"/>
    <publication name="Codex: Chaos Space Marines (2002)" id="39fe-a72b-ce70-33d3" hidden="false" publicationDate="2002" publisher="Codex: Chaos Space Marines (2002)" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Chaos_Space_Marines_(3rd_Edition,_2nd_Codex)" shortName="CSM02"/>
    <publication name="Codex: Tau (2001)" id="cc57-f4fd-b4ec-c9f7" hidden="false" publicationDate="2001" publisher="Codex: Tau (2001)" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Tau_(3rd_Edition)" shortName="TE01"/>
    <publication name="Codex: Tau Empire (2006)" id="d1c2-eb3b-3d99-fa54" hidden="false" publicationDate="2006" publisher="Codex: Tau Empire (2006)" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Tau_Empire_(4th_Edition)" shortName="TE06"/>
    <publication name="Codex: Eldar (2006)" id="63f5-19dd-a006-c9ef" hidden="false" publicationDate="2006" publisher="Codex: Eldar (2006)" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Eldar_(4th_Edition)" shortName="CE06"/>
    <publication name="Codex: Eldar (1999)" id="f2b7-7684-3e10-26c4" hidden="false" publicationDate="1999" publisher="Codex: Eldar (1999)" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Eldar_(3rd_Edition)" shortName="CE99"/>
    <publication name="Codex: Craftworld Eldar (2000)" id="0dec-6944-4d7a-e6dc" hidden="false" publicationDate="2000/06" publisher="Codex: Craftworld Eldar (2000)" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Craftworld_Eldar_(3rd_Edition)" shortName="CE00"/>
    <publication name="Codex: Dark Angels (1999)" id="5813-70d9-ad1a-07f5" hidden="false" publicationDate="1999" publisher="Codex: Dark Angels (1999)" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Dark_Angels_(3rd_Edition)" shortName="DA99"/>
    <publication name="Codex: Blood Angels (1999)" id="ab6a-fac1-8384-4c1f" hidden="false" publicationDate="1999" publisher="Codex: Blood Angels (1999)" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Blood_Angels_(3rd_Edition)" shortName="BA99"/>
    <publication name="Codex: Imperial Guard (2003)" id="8c36-25a5-bb95-6fec" hidden="false" publicationDate="2003/09" publisher="Codex: Imperial Guard (2003)" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Imperial_Guard_(3rd_Edition,_2nd_Codex)" shortName="IG03"/>
    <publication name="Codex: Daemonhunters (2003)" id="12c9-0ce9-4b2c-4421" hidden="false" publicationDate="2003/03" publisher="Codex: Daemonhunters (2003)" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Daemonhunters_(3rd_Edition)" shortName="DH03"/>
    <publication name="Codex: Witch Hunters (2004)" id="8001-0e45-e3df-a600" hidden="false" publicationDate="2004/04" publisher="Codex: Witch Hunters (2004)" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Witch_Hunters_(3rd_Edition)" shortName="WH04"/>
    <publication name="Codex: Necrons (2002)" id="4561-2d06-1241-5d60" hidden="false" publicationDate="2002" publisher="Codex: Necrons (2002)" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Necrons_(3rd_Edition)" shortName="NC02"/>
    <publication name="Codex: Orks (1999)" id="507c-c470-7119-d4e8" hidden="false" publicationDate="1999" publisher="Codex: Orks (1999)" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Orks_(3rd_Edition)" shortName="OR99"/>
    <publication name="Codex: Space Wolves (2000)" id="9d0f-b637-b918-4624" hidden="false" publicationDate="2000" publisher="Codex: Space Wolves (2000)" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Space_Wolves_(3rd_Edition)" shortName="SW00"/>
    <publication name="Codex: Black Templars (2005)" id="b0f6-f2ff-dcb0-7dc2" hidden="false" publicationDate="2005" publisher="Codex: Black Templars (2005)" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Black_Templars_(4th_Edition)" shortName="BT05"/>
    <publication name="Cities of Death" id="ce6e-c41d-a56a-a01f" hidden="false" publicationDate="2006/06" publisher="Cities of Death" publisherUrl="https://wh40k.lexicanum.com/wiki/Warhammer_40,000:_Cities_of_Death" shortName="COD"/>
    <publication name="Codex: Eye of Terror" id="952b-6b15-81fc-f4e8" hidden="false" publicationDate="2003/06" publisher="Codex: Eye of Terror" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Eye_of_Terror_(3rd_Edition)" shortName="EOT"/>
    <publication name="Codex: Cityfight" id="6d4c-e33d-57f3-94cb" hidden="false" publicationDate="2001/09" publisher="Codex: Cityfight" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Cityfight" shortName="CITY"/>
    <publication name="Codex: Armageddon" id="a8e4-1d15-8cc8-c6d6" hidden="false" publicationDate="2000" publisher="Codex: Armageddon" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Armageddon_(3rd_Edition)" shortName="ARM"/>
    <publication name="Index Astartes I" id="6c7d-301a-6070-3728" hidden="false" publicationDate="2002/02" publisher="Index Astartes I" publisherUrl="https://wh40k.lexicanum.com/wiki/Index_Astartes_I" shortName="IND1"/>
    <publication name="Index Astartes II" id="d78c-e4ca-2bea-ebd0" hidden="false" publicationDate="2003/01" publisher="Index Astartes II" publisherUrl="https://wh40k.lexicanum.com/wiki/Index_Astartes_II" shortName="IND2"/>
    <publication name="Index Astartes III" id="ad02-c842-dd44-a7b6" hidden="false" publicationDate="2003/11" publisher="Index Astartes III" publisherUrl="https://wh40k.lexicanum.com/wiki/Index_Astartes_III" shortName="IND3"/>
    <publication name="Index Astartes IV" id="6a04-72ab-59a2-3adb" hidden="false" publicationDate="2004" publisher="Index Astartes IV" publisherUrl="https://wh40k.lexicanum.com/wiki/Index_Astartes_IV" shortName="IND4"/>
    <publication name="Chapter Approved 2001" id="1e8d-01eb-e231-b479" hidden="false" publicationDate="2001/07" publisher="Chapter Approved 2001" publisherUrl="https://wh40k.lexicanum.com/wiki/Chapter_Approved_2001" shortName="CA01"/>
    <publication name="Chapter Approved 2003" id="c20e-10ee-f8e8-b94e" hidden="false" publicationDate="2002/11" publisher="Chapter Approved 2003" publisherUrl="https://wh40k.lexicanum.com/wiki/Chapter_Approved_2003" shortName="CA03"/>
    <publication name="Chapter Approved 2004" id="6ede-3247-4032-c53b" hidden="false" publicationDate="2004" publisher="Chapter Approved 2004" publisherUrl="https://wh40k.lexicanum.com/wiki/Chapter_Approved_2004" shortName="CA04"/>
    <publication name="Imperial Armour Vol. 1 - Imperial Guard" id="296c-ccd7-595e-a2e9" hidden="false" publicationDate="2003/01" publisher="Imperial Armour Volume One: Imperial Guard &amp; Imperial Navy" publisherUrl="https://wh40k.lexicanum.com/wiki/Imperial_Armour_Volume_One_-_Imperial_Guard_and_Imperial_Navy" shortName="IA1"/>
    <publication name="Imperial Armour Vol. 2 - Space Marines &amp; Inquisition" id="bcb1-c9fa-ec1b-8e38" hidden="false" publicationDate="2004/12" publisher="Imperial Armour Volume Two - Space Marines and Forces of the Inquisition" publisherUrl="https://wh40k.lexicanum.com/wiki/Imperial_Armour_Volume_Two_-_Space_Marines_and_Forces_of_the_Inquisition" shortName="IA2"/>
    <publication name="Imperial Armour Vol. 3 - The Taros Campaign" id="c95d-1db6-d313-22ab" hidden="false" publicationDate="2005/10" publisher="Imperial Armour Volume Three - The Taros Campaign" publisherUrl="https://wh40k.lexicanum.com/wiki/Imperial_Armour_Volume_Three_-_The_Taros_Campaign" shortName="IA3"/>
    <publication name="Imperial Armour Vol. 5 - Siege of Vraks Pt. 1" id="dd2d-f9b0-781c-f79f" hidden="false" publicationDate="2007/12" publisher="Imperial Armour Volume Five - The Siege of Vraks - Part One" publisherUrl="https://wh40k.lexicanum.com/wiki/Imperial_Armour_Volume_Five_-_The_Siege_of_Vraks_-_Part_One" shortName="IA5"/>
    <publication name="Imperial Armour Vol. 4 - The Anphelion Project" id="6ea6-0bcb-b3b1-1ba5" hidden="false" publicationDate="2006/12" publisher="Imperial Armour Volume Four - The Anphelion Project" publisherUrl="https://wh40k.lexicanum.com/wiki/Imperial_Armour_Volume_Four_-_The_Anphelion_Project" shortName="IA4"/>
    <publication name="Imperial Armour Update 2005" id="5a6f-859c-946b-7329" hidden="false" publicationDate="2005" publisher="Imperial Armour Update 2005" publisherUrl="https://wh40k.lexicanum.com/wiki/Imperial_Armour_Update_2005" shortName="IA05"/>
    <publication name="Imperial Armour Update 2006" id="da31-fef4-944a-f034" hidden="false" publicationDate="2006" publisher="Imperial Armour Update 2006" publisherUrl="https://wh40k.lexicanum.com/wiki/Imperial_Armour_Update_2006" shortName="IA06"/>
    <publication name="Imperial Armour Update (2002)" id="3c4e-ed0b-b966-9bce" hidden="false" publicationDate="2002" publisher="Imperial Armour Update" publisherUrl="https://wh40k.lexicanum.com/wiki/Imperial_Armour_Update" shortName="IA02"/>
    <publication name="Imperial Armour Update 2004" id="c147-595d-57b4-1b9e" hidden="false" publicationDate="2004" publisher="Imperial Armour Update 2004" publisherUrl="https://wh40k.lexicanum.com/wiki/Imperial_Armour_Update_2004" shortName="IA04"/>
    <publication name="Imperial Armour - Imperial Vehicles" id="454c-836b-89a0-27a9" hidden="false" publicationDate="2000" publisher="Imperial Armour - Imperial Vehicles for Warhammer 40,000" publisherUrl="https://wh40k.lexicanum.com/wiki/Imperial_Armour_-_Imperial_Vehicles_for_Warhammer_40,000" shortName="IAi"/>
    <publication name="Imperial Armour II - Ork, Eldar and Dark Eldar " id="138a-0b3f-cad7-1794" hidden="false" publicationDate="2001" publisher="Imperial Armour II - Ork, Eldar and Dark Eldar Vehicles for Warhammer 40,000" publisherUrl="https://wh40k.lexicanum.com/wiki/Imperial_Armour_II_-_Ork,_Eldar_and_Dark_Eldar_Vehicles_for_Warhammer_40,000" shortName="IAii"/>
    <publication name="Codex: Orks (2008)" id="4f2e-0482-0981-cdae" hidden="false" publicationDate="2008/01" publisher="Codex: Orks" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Orks_(4th_Edition)" shortName="OR08"/>
    <publication name="Codex: Chaos Space Marines (2007)" id="3c33-edbb-79d5-85d1" hidden="false" publicationDate="2007/09" publisher="Codex: Chaos Space Marines" publisherUrl="https://wh40k.lexicanum.com/wiki/Codex:_Chaos_Space_Marines_(4th_Edition)" shortName="CSM07"/>
    <publication name="github" id="41f7-1acc-56ab-89cc" hidden="false" publisherUrl="https://github.com/Kothra/Warhammer-40-000-4th-Edition-for-NewRecruit"/>
  </publications>
  <sharedProfiles>
    <profile name="Bolt Pistol" id="d2c2-d25d-9a03-afc4" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">12&quot;</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">4</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">5</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Pistol</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
    <profile name="Bolter" id="fa34-07ff-1a5d-fe9f" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <alias>Boltgun</alias>
      <alias>Bolt Gun</alias>
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">24&quot;</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">4</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">5</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Rapid Fire</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
    <profile name="Plasma Pistol" id="00e2-6e56-5dfe-e202" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">12&quot;</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">7</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">2</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Pistol, Gets Hot!</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
    <profile name="Lascannon" id="a985-b7e4-1396-ce64" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">48&quot;</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">9</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">2</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Heavy 1</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
    <profile name="Flamer" id="e329-1729-419b-2bb6" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">Template</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">4</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">5</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Assault 1</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
    <profile name="Heavy Flamer" id="e21b-79a4-8ddd-8617" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">Template</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">5</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">4</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Assault 1</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
    <profile name="Meltagun" id="4771-d658-dd0f-2ccb" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">12&quot;</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">8</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">1</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Assault 1, Melta</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
    <profile name="Multi-melta" id="1b9f-dc29-44a8-9237" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">24&quot;</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">8</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">1</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Heavy 1, Melta</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
    <profile name="Shotgun" id="98b5-a4bd-0fce-affa" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">12&quot;</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">3</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">-</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Assault 2</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
    <profile name="Sniper Rifle" id="3cbe-c00f-3545-9f41" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">36&quot;</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">X</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">6</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Heavy 1, Sniper, Pinning</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
    <profile name="Missile Launcher (Krak)" id="db43-c0ed-46f2-39ab" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">48&quot;</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">8</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">3</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Heavy 1</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
    <profile name="Missile Launcher (Frag)" id="2774-242b-9be0-90f2" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">48&quot;</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">4</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">6</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Heavy 1, Blast</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
    <profile name="Plasma Cannon" id="91c9-28be-f942-996e" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">36&quot;</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">7</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">2</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Heavy 1, Blast, Gets Hot!</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
    <profile name="Demolisher Cannon" id="7894-54a9-6029-a069" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">24&quot;</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">10</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">2</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Ordnance 1, Large Blast</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
    <profile name="Storm Bolter" id="d5e9-6e7d-416d-6b6a" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">24&quot;</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">4</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">5</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Assault 2</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
    <profile name="Heavy Bolter" id="0e61-328d-62cd-8b59" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">36&quot;</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">5</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">4</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Heavy 3</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
    <profile name="Assault Cannon" id="d4c2-a3d4-540a-5585" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">24&quot;</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">6</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">4</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Heavy 4, Rending</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
    <profile name="Autocannon" id="7d29-c50b-9499-c31b" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">48&quot;</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">7</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">4</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Heavy 2</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
    <profile name="Plasma Gun" id="45fb-35fd-3a93-bc60" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">24&quot;</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">7</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">2</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Rapid Fire, Gets Hot!</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
    <profile name="Power Weapon" id="793f-3d45-00ad-58d2" hidden="false" typeId="b729-49a4-4123-cf00" typeName="Melee Weapon">
      <characteristics>
        <characteristic name="Details" typeId="acf3-d214-6e51-29fe">Power weapons ignore Armour Saves, and some may give a Strength bonus or wound on a fixed dice score regardless of the enemy&apos;s Toughness characteristic (as detailed in the appropriate army Codex).</characteristic>
      </characteristics>
    </profile>
    <profile name="Thunder Hammer" id="d847-93ef-b880-0cc8" hidden="false" typeId="b729-49a4-4123-cf00" typeName="Melee Weapon">
      <characteristics>
        <characteristic name="Details" typeId="acf3-d214-6e51-29fe">Doubles user&apos;s base Strength (to a maximum of 10). Ignores Armour Saves. Attacks are made at Initiative 1, ignoring modifiers. Any model wounded but not killed by an attack with a Thunder Hammer has Initiative 1 in the next Assault Phase. Vehicles struck by a Thunder Hammer suffer a &apos;Crew Shaken&apos; result in addition to any other damage results.</characteristic>
      </characteristics>
    </profile>
    <profile name="Power Fist" id="180c-c683-5834-19cc" hidden="false" typeId="b729-49a4-4123-cf00" typeName="Melee Weapon">
      <characteristics>
        <characteristic name="Details" typeId="acf3-d214-6e51-29fe">Doubles user&apos;s base Strength (to a maximum of 10). Ignores Armour Saves. Attacks are made at Initiative 1, ignoring modifiers.</characteristic>
      </characteristics>
    </profile>
    <profile name="Close Combat Weapon" id="7b3d-1932-99ef-f5c8" hidden="false" typeId="b729-49a4-4123-cf00" typeName="Melee Weapon">
      <characteristics>
        <characteristic name="Details" typeId="acf3-d214-6e51-29fe">There is is a bewildering array of close combat weapons, all of which confer no bonus to the Strength of combatants. However, swords and pistols (or similar hand weapons) gain the wielder an additonal close combat attack. A plasma pistol can be used as a close combat weapon, though it confers no Strength bonus or particular armour penetration advantages.</characteristic>
      </characteristics>
    </profile>
    <profile name="Chainfist" id="7226-d535-3f43-b157" hidden="false" typeId="b729-49a4-4123-cf00" typeName="Melee Weapon">
      <characteristics>
        <characteristic name="Details" typeId="acf3-d214-6e51-29fe">A Chainfist is treated exactly like a Power Fist, but rolls 2D6 for Armour Penetration against Vehicles.</characteristic>
      </characteristics>
    </profile>
    <profile name="Lightning Claw" id="5d6f-948a-8857-ed26" hidden="false" typeId="b729-49a4-4123-cf00" typeName="Melee Weapon">
      <characteristics>
        <characteristic name="Details" typeId="acf3-d214-6e51-29fe">Lightning claws are commonly used as matched pairs, as only a second lightning claw can provide an additional close combat weapon attack bonus for a model equipped with one. Lightning claws ignore Armour Saves and re-roll any failed To Wound rolls.</characteristic>
      </characteristics>
    </profile>
    <profile name="Storm Shield" id="1b55-f520-4b9a-c7e7" hidden="false" typeId="57617267656172204974656d23232344415441232323" typeName="Wargear">
      <characteristics>
        <characteristic name="Description" typeId="4465736372697074696f6e23232344415441232323">A combat shield confers a 4+ Invulnerable Save to the bearer in close combat.</characteristic>
      </characteristics>
    </profile>
    <profile name="Combat Shield" id="574b-cd9f-a341-fa26" hidden="false" typeId="57617267656172204974656d23232344415441232323" typeName="Wargear">
      <characteristics>
        <characteristic name="Description" typeId="4465736372697074696f6e23232344415441232323">A combat shield confers a 5+ Invulnerable Save to the bearer in close combat.</characteristic>
      </characteristics>
    </profile>
    <profile name="Force Weapon" id="29ac-7e83-0ba0-5fd3" hidden="false" typeId="b729-49a4-4123-cf00" typeName="Melee Weapon">
      <characteristics>
        <characteristic name="Details" typeId="acf3-d214-6e51-29fe">Force weapons are treated as a power weapon, but can unleash a psychic attack that kills an opponent outright. Roll to hit and wound as normal, allowing any Invulnerable Saving throws the victim might have. As long as one wound has been inflicted, make a Psychic test for the Psyker against any one opponent wounded by the weapon. The normal rules for using psychic powers apply, and you may not use another psychic power in the same turn. Passing the test slays the opponent outright, no matter how many Wounds it has (count the actual number inflicted for determining who won the assault). Force weapons have no special effect against targets that don&apos;t have Wounds, such as vehicles.</characteristic>
      </characteristics>
    </profile>
    <profile name="Dozer Blade" id="c8cb-464f-91d4-d5b2" hidden="false" typeId="57617267656172204974656d23232344415441232323" typeName="Wargear">
      <characteristics>
        <characteristic name="Description" typeId="4465736372697074696f6e23232344415441232323">A vehicle equipped with a dozer blade can re-roll a failed Difficult Terrain test as long as it does not move more than 6&quot; that turn.</characteristic>
      </characteristics>
    </profile>
    <profile name="Extra Armour" id="7bef-a5a7-7910-c078" hidden="false" typeId="57617267656172204974656d23232344415441232323" typeName="Wargear">
      <characteristics>
        <characteristic name="Description" typeId="4465736372697074696f6e23232344415441232323">A vehicle equipped with extra armour counts Crew Stunned results on the Vehicle Damage table as Crew Shaken instead.</characteristic>
      </characteristics>
    </profile>
    <profile name="Power of the Machine Spirit" id="8ed3-8d46-33de-8edb" hidden="false" typeId="57617267656172204974656d23232344415441232323" typeName="Wargear">
      <characteristics>
        <characteristic name="Description" typeId="4465736372697074696f6e23232344415441232323">If a vehicle with Power of the Machine Spirit suffers a Crew Stunned result on the Vehicle Damage table, the Machine Spirit allows the vehicle to move directly ahead up to its maximum speed. Also, the Machine Spirit can operate one weapon per turn as long as the vehicle has moved no more than 6&quot; even if the vehicle suffers a Crew Shaken or Crew Stunned result. This is in addition to any weaponry that can normally fire. The Machine Spirit has a Ballistic Skill of 2.</characteristic>
      </characteristics>
    </profile>
    <profile name="Searchlight" id="b613-8224-ea11-026e" hidden="false" typeId="57617267656172204974656d23232344415441232323" typeName="Wargear">
      <characteristics>
        <characteristic name="Description" typeId="4465736372697074696f6e23232344415441232323">Searchlights are only of any use in missions where the Night Fighting mission special rule is in effect. A vehicle equipped with a searchlight, it must still use the Night Fighting rules to pick a target, but firing at that unit will illuminate it with the searchlight. For the rest of the Shooting phase any other friendly unit that fires at the illuminated unit does not need to use the Night Fighting special rule. However, a vehicle that uses a searchlight can be targeted during the following enemy turn as if the Night Fighting rules were not in effect, as the enemy can see the searchlight.</characteristic>
      </characteristics>
    </profile>
    <profile name="Smoke Launchers" id="0d56-36b2-c796-d2e6" hidden="false" typeId="57617267656172204974656d23232344415441232323" typeName="Wargear">
      <characteristics>
        <characteristic name="Description" typeId="4465736372697074696f6e23232344415441232323">One per game, after completing its move, a vehicle with smoke launchers can trigger them (no matter how far it moved), Place some cotton wool around the vehicle to show that it is concealed. The vehicle may not fire in the same turn as it used its smoke launchers, but any penetrating hits scored by the enemy in their next Shooting phase count as glancing hits. After the enemy&apos;s next turn, the smoke disperses with no further effect. Note that a vehicle may still use smoke launchers even if it suffers a Crew Shaken or Crew Stunned result.</characteristic>
      </characteristics>
    </profile>
    <profile name="Hunter-killer Missile" id="94a2-3ab9-3532-a92b" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">Unlimited</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">8</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">3</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Heavy 1, One Shot</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
    <profile name="Heavy close combat weapon" id="b3d3-8bf8-a94a-194c" hidden="false" typeId="b729-49a4-4123-cf00" typeName="Melee Weapon">
      <characteristics>
        <characteristic name="Details" typeId="acf3-d214-6e51-29fe">The maximum Armour Save that can be used against a Heavy close combat weapon is 4+ even if it would normally be better.</characteristic>
      </characteristics>
    </profile>
    <profile name="Witchblade" id="0448-9b63-d2b2-7082" hidden="false" typeId="b729-49a4-4123-cf00" typeName="Melee Weapon">
      <characteristics>
        <characteristic name="Details" typeId="acf3-d214-6e51-29fe">A Witchblade inflicts wounds on a roll of 2+, regardless of the target&apos;s Toughness, though Armour Saves are taken as normal. Against vehicles, the wielder of a witchblade triples his Strength (up to S10).</characteristic>
      </characteristics>
    </profile>
    <profile name="Battle Cannon" id="ef13-5d02-562d-ef4b" hidden="false" typeId="576561706f6e23232344415441232323" typeName="Weapon">
      <characteristics>
        <characteristic name="Range" typeId="52616e676523232344415441232323">72&quot;</characteristic>
        <characteristic name="Strength" typeId="537472656e67746823232344415441232323">8</characteristic>
        <characteristic name="AP" typeId="4.1502323234441545e+23">3</characteristic>
        <characteristic name="Type" typeId="8b10-045a-f593-605e">Ordnance 1, Large Blast</characteristic>
        <characteristic name="Info" typeId="33e9-27bd-77e4-401d"/>
      </characteristics>
    </profile>
  </sharedProfiles>
  <sharedRules>
    <rule name="Deep Strike" id="bbf5-b1c2-49b0-f3c2" hidden="false">
      <description>Some units are allowed to enter play via tunnelling, teleportation, flying, or some other extraordinary means. Where this is the case it will be noted in their special rules. Some units always have the option; others only have the option in missions where Deep Strike special rule is in effect. If you wish to use this option then the units in question begin the game in reserve - it does not matter whether the Reserves special rule is in effect for the mission. Roll for arrival of these units as specified in the Reserves rules and then deploy them as follows:

Place one model from the unit anywhere on the table, in the position you would like the unit to arrive, and roll the Scatter dice. If you roll a HIT the model stays where it is, but if an arrow is shown this determines the direction the model is scattered in. If a scatter occurs, roll 2D6&quot; to see how far the model scatters. If the first model scatters off the table the entire unit is destroyed.

All Deep Striking models are arranged around the first model. Models must be placed in base contact with the original model in a circle around it. When the first circle is complete, a further circle should be placed with each model touched the circle inside it. Each circle should include as many models as will fit, and they may be facing in any direction. You may not place models within 1&quot; of any enemy. If you are unable to complete a circle of models without any of them coming within 1&quot; of the enemy, entering impassable terrain, or going off-table, the surplus models are destroyed.

Units arriving via Deep Strike may not move or assault on the turn they arrive. They may shoot as normal, but count as having moved.</description>
      <alias>Deep Striking</alias>
    </rule>
    <rule name="Infiltrate" id="c27d-09d4-6a09-1bcd" hidden="false">
      <description>This special rule is automatically lost by an independent character joining a unit that does not have this special rule, and vice versa.

In the right circumstances, stealthy troops have the ability to work their way into a forward position on the battlefield. To represent this, units with the Infiltrate ability may set up in accordance with the Infiltrate special rule in any mission that uses this special rule. If the mission does not allow troops to use the Infiltrate rule then the troops in question must set up normally with the rest of the army. The Infiltrate ability does not allow units that would normally be in reserve to deploy on the table. If a unit with this ability is equipped with a transport vehicle, it loses the Infiltrate ability.

Any infiltrators deployed on the table at the start of the game are deployed after all other units. If both sides have infiltrators, toss a coin to determine who goes first and alternate deploying these units. Infiltrators may be set up anywhere on the table that is more than 12&quot; away from an enemy unit, if no deployed enemy unit can draw a line of sight to them. Alternatively, they may be set up anywhere on the table that is more than 18&quot; from an enemy unit, even if they can be seen.</description>
    </rule>
    <rule name="Character" id="ff9d-2579-a056-981b" hidden="false" page="50" publicationId="c0d3-c074-f54c-9ec4">
      <description>Characters follow rules for models of their type.
All characters have the Move Through Cover and Skilled Rider special rules. This advantage does not extend to vehicles they may be traveling in.

Characters are allowed to move freely around the battlefield and can temporarily join other units. While a character is part of a unit, he must obey the usual Coherency rules until he leaves the unit, as detailed below. The combined unit moves and assaults at the speed of the slowest model while they stay together. In order to join a unit, an independent character simply has to move within the 2&quot; coherency distance of the unit during his Movement phase and be declared as joining that unit. Note that a lone character cannot join another character to create a character unit.
- An independent character can leave a unit during the Movement phase by moving out of coherence distance with it.
- An independent character may only join or leave a unit during the Movement phase - once assaults are launched it is too late to join in or duck out!
- A character may not join or leave a unit while it is falling back - he/she/it must wait until the unit has regrouped.
- If the unit has been pinned, the character may not leave it until it is no longer pinned.
When an independent character joins a unit, it might have different special rules from those of the unit. Unless specified in the rule itself (like in the Stubborn special rule), the unit&apos;s special rules are not conferred upon the character, and the character&apos;s special rules are not conferred upon the unit.
In some cases, the character or the unit may lose their special rules as a result of the character joining. For example, if a character that does not have the Infiltrate special rule joins of unit of Infiltrators, the unit loses the Infiltrate rule.

Any Leadership tests made by a unit joined by a character are made using the character&apos;s Leadership value, if it is superior to the unit&apos;s. Remember, if a character is part of a unit that falls back, he may not leave the unit until it regroups. Characters never need to take Last Man Standing tests, as they are used to fighting heroically on their own.

Some characters are able to lead a special retinue, bodyguard, or other HQ unit in battle. If a character is fielded with such a unit, he may not leave them and join another unit while they remain a live. Should the unit be destroyed, the character may once again move between units.

Characters who have joined a unit are considered part of that unit and so may not normally be picked out as targets. Characters that are not part of a unit can only be chosen as targets if they are the closest target to the firing unit. Characters that are Monstrous Creatures can always be picked out as separate targets unless they have joined a unit of monstrous creatures or a unit with special rules that offer them protection, such as the Tyranid Tyrant Guard.

All characters shoot just like ordinary troopers, although in many cases they will have better Ballistic Skills or exotic weaponry that sets them apart. Where this is the case, either roll for them separately or use different coloured dice to differentiate their shooting. Characters must still fire at the same target as any unit they are with.

If a unit including a character charges into close combat, the character must charge too. A character on his own can charge into close combat if within range of the enemy in the Assault phase.
Characters are treated as a separate unit when resolving close combats, following the normal rules for multiple combats. This means that they MUST be in base-to-base contact with an enemy model in order to fight, and may not make attacks for being within 2&quot; of another friendly model. If the unit they have joined is locked in combat with the enemy, the character is locked with them. However, wounds suffered by a unit never carry over onto a character that joined them.
This also means that only the enemy models that are engaged with the character may allocate their attacks against it and can be hurt by its attacks.</description>
      <alias>Independent Character</alias>
    </rule>
    <rule name="Bike" id="03b4-2279-c3ac-d15d" hidden="false">
      <description>Bikes can move up to 12&quot; in the Movement phase instead of the normal 6&quot; move. Bikes are not slowed down by difficult terrain. However, each model entering or moving through difficult terrain must take a Dangerous Terrain test.

All bikes can use the Turbo Boosters special rule.

Each bike in a unit may fire one weapon for each rider on the bike. If rapid fire weapons are mounted on a bike, they are allowed to fire once up to maximum range even if the bike moved. Rapid fire and Heavy weapons maybe fired if the unit moves and the bike is still allowed to charge into close combat in the same turn.

Bike assault moves are not slowed down by difficult terrain. However, each model entering or moving through difficult terrain must take a Dangerous Terrain test.

Bikes fall back 3D6&quot; after failing a Morale check, rather than 2D6&quot;.

A bike increases the Toughness characteristic of its rider by 1. Note that this increase does not affect the model&apos;s Toughness when adjudicating Instant Death.</description>
    </rule>
    <rule name="Jetbike" id="57ce-5f5a-e08c-8956" hidden="false">
      <description>Jetikes can move up to 12&quot; in the Movement phase instead of the normal 6&quot; move. Jetbikes may move over enemy and friendly units. They are able to move completely over difficult terrain, so that they do not have to take Dangerous terrain tests. They may even end their move on top of difficult terrain, but if they do this they cannot claim any Cover Save, and will be as tall as the terrain for line of sight purposes.

Jetbikes may try to pass through Area Terrain, eg, woods and forests, rather than fly above them, in order to claim a Cover Save. If they do this, they are not slowed down by difficult terrain but each model entereing or moving through the area must take a Dangerous Terrain test. If they end their move within difficult terrain, they will be able to claim a Cover Save.

All jetbikes can use the Turbo Boosters special rule.

Each jetbike in a unit may fire one weapon for each rider on the bike. If rapid fire weapons are mounted on a jetbike, they are allowed to fire once up to maximum range even if the bike moved. Rapid fire and Heavy weapons maybe fired if the unit moves and the jetbike is still allowed to charge into close combat in the same turn.

Jetbikes&apos; assault moved are not slowed down by difficult terrain. However, each model entering or moving through difficult terrain when assaulting must take a Dangerous Terrain test. Note that jetbikes cannot opt to move over difficult terrain in the Assault phase as they can in the Movement phase, as the jetbikes are assumed to be close to the ground in order to initiate combat.

Eldar jetbike units are always allowed to move 6&quot; in the Assault phase, even if they don&apos;t assault. When Eldar jetbikes move in the Assault phase and do not assault, then they treat difficult terrain just as jetbikes do in the Movement phase (and so can opt to move through it, or end their move on top of it).

Jetbikes will fall back 3D6&quot; if they fail a Morale Check instead of 2D6&quot;.

A jetbike increases the Toughness characteristic of its rider by 1. Note that this increase does not affect the model&apos;s Toughness when adjudicating Instant Death.</description>
    </rule>
    <rule name="Monstrous Creature" id="7af2-efdd-f210-5b7e" hidden="false">
      <description>When moving through difficult terrain, Monstrous Creatures may re-roll the dice to see how far they move, as they smash aside anything in their path.

When shooting, Monstrous Creatures enjoy the advantage of being able to automatically pass the Leadership test required to target enemy units other than the closest.
Monstrous Creatures can fire up to two weapons per turn.

All wounds inflicted by a Monstrous Creature in close combat ignore Armour Saves.
Some Monstrous Creatures have weapons that augment their Strength (such as the Eldar Wraithlord&apos;s power fist) or work unusually (like the Dark Eldar Talos). Monstrous Creatures without such a special rule roll an additional D6 for armour penetration (2D6 + Strength instead of 1D6) when attacking a vehicle.</description>
    </rule>
    <rule name="Jump Infantry" id="1c34-b70c-30f3-dd56" hidden="false">
      <description>Jump infantry can move up to 12&quot; in the Movement phase instead of the normal 6&quot; move. Thus is optional and they can choose to move as normal infantry if they wish. When using jump packs, movement is not reduced for difficult terrain, and jump pack equipped models can move over other models or obstacles freely. However, if they end their move in difficult terrain, they must take a Dangerous Terrain test.
Jump infantry assault 6&quot; like normal infantry. This move is slowed by difficult terrain in the same way as other infantry.
Jump infantry fall back 3D6&quot;, as they will always use their packs. They may, of course, move over any obstructions when falling back, but if they end their move in difficult terrain they must still take a Dangerous Terrain test.</description>
    </rule>
    <rule name="Infantry" id="6960-6a37-b234-e754" hidden="false">
      <description>Default unit type
6&quot; move and charge</description>
    </rule>
    <rule name="Beast/Cavalry" id="f777-9388-2520-2ba0" hidden="false">
      <description>Beasts and cavalry may use the Fleet special rule.

Beasts and cavalry move 12&quot; when charging. They are slowed by difficult terrain - roll for distance they can move just like you would for infantry, but double the result.

Beasts and cavalry fall back 3D6&quot;.</description>
      <alias>Beast</alias>
      <alias>Beasts</alias>
      <alias>Cavalry</alias>
    </rule>
    <rule name="Jet Pack Infantry" id="ffdf-361f-d803-4b5d" hidden="false">
      <description>Jet pack infantry work like Jump infantry with some differences.

In the Movement phase, they only move 6&quot; when using their jet packs, but are allowed to move 6&quot; in the Assault phase even if they don&apos;t assault.

In the Shooting phase, models with jet packs are allowed to fire rapid fire weapons once at up to maximum range, even if the unit has moved. They are also allowed to declare a charge after firing rapid fire weapons.</description>
      <alias>Jump Infantry (Jet Pack)</alias>
    </rule>
    <rule name="Fast Vehicle" id="b915-4afd-1fbe-3d6c" hidden="false">
      <description>In addition to following the normal rules for vehicles:
Fast vehicles can move up to 24&quot; in the Movement phase.
They can fire all weapons when moving up to 6&quot;, and can fire 1 main weapon and all defensive weapons when moving up to 12&quot;.
Fast vehicles may not mount or fire Ordnance weapons.</description>
      <alias>Fast</alias>
    </rule>
    <rule name="Tank" id="cdcc-d0b7-80cb-4fa6" hidden="false">
      <description>Tanks follow the normal rules for vehicles of their type, and can perform Tank Shock.</description>
      <alias>Tanks</alias>
    </rule>
    <rule name="Skimmer" id="f208-29f7-bbe8-160b" hidden="false">
      <description>In addition to following the normal rules for vehicles of their type:
Skimmers ignore terrain altogether when they move and can end their move hovering over difficult or impassable terrain (but not over other models). Mobile skimmers never count obscured target benefit from terrain they are hovering over.


In the Shooting phase any hits that beat the Armour Value of a mobile skimmer moving more than 6&quot; in its last Movement phase count as glancing hits instead of penetrating hits. In order to qualify as moving more than 6&quot;, the skimmer must end its move more than 6&quot; from where it started the turn. Players may not claim their skimmers are &apos;circling&apos; or moving 4&quot; one way and 3&quot; back.
Skimmers that are immobilized immediately crash, and are destroyed if they moved more than 6&quot; in their last turn, or are over impassable or difficult terrain. Otherwise they make a forced landing where they are and remain immobilised for the rest of the game, no longer counting as a skimmer.


Skimmers can always move over enemy troops and this neither impedes their movement nor harms the troops below. Enemy troops can attack skimmers in the assault phase, as close combat takes into account close range shooting and grenade lobbing as well as actual hand-to-hand combat. Skimmer tanks can still choose to overrun an enemy unit and perform a Tank Shock in the normal manner.</description>
      <alias>Skimmers</alias>
    </rule>
    <rule name="Open-topped" id="b94d-4aa2-923e-cdf3" hidden="false">
      <description>Whenever a roll is made on the Vehicle Damage table for an open-topped vehicle, add a 1 to the Damage result.
All open-topped vehicles have the Vulnerable to Blast/Template special rule.
Units may disembark from an open-topped transport in any direction (but must still disembark within 2&quot;), and may assault in the same turn they disembark.</description>
    </rule>
    <rule name="And They Shall Know No Fear" id="8eaf-de62-f965-125b" hidden="false">
      <description>Space Marines automatically pass Morale tests to regroup, and can take such tests even if the squad has been reduced to less than 50% by casualties, though all other criteria apply. If Space Marines are caught by a sweeping advance, they are not destroyed and will instead continue to fight normally. If this happens, then the unit is subject to the No Retreat! rule in this round of close combat and may therefore lose additional casualties if outnumbered. Usually troops that regroup may not move normally and always count as moving whether they do or not, but these restrictions do not apply to models with this special rule.
Units that include Servitors and Familiars are still subject to this rule as long as the unit contains at least one Space Marine.
Space Marines are still subject to Last Man Standing tests. They will always regroup after each Fall Back move to &apos;reassess&apos; the situation however.</description>
    </rule>
    <rule name="Counter-Attack" id="06c2-8316-1f60-2153" hidden="false">
      <description>This special rule is automatically lost by an independent character joining a unit that does not have this special rule, and vice versa.

Troops with this skill believe that attack is always the best form of defence. If charged, they will spring forward themselves and counter-attack the enemy. To represent this, unengaged models from a unit that has been charged by the enemy must move up to 6&quot; to get into base-to-base contact with the enemy. Treat the counter-attack as you would an Assault move, so take terrain into account as normal. Models that counter-attack do not receive the +1 attack bonus for charging but will be able to fight with their full complement of attacks. You may not counter0attack if the unit was charged as part of a Consolidation move.</description>
    </rule>
    <rule name="Fearless" id="db33-1068-512b-6958" hidden="false">
      <description>Fearless troops never have to fall back and are assumed to automatically pass any morale test they are required to take. They can never be pinned. This special rule is gained by any independent character joining a Fearless unit. Also, as long as a Fearless character stays inside a non-Fearless unit, he loses this special rule.</description>
    </rule>
    <rule name="Feel No Pain" id="f312-bf1e-afd7-0346" hidden="false">
      <description>Some warriors are so blood-frenzied that they can ignore injuries that would incapacitate even a battle-hardened Space Marine. If a model with this ability loses a wound, roll a dice. On a 1, 2 or 3, take the wound as normal, removing the model if it loses its final wound. On a 4, 5 or 6, the injury is ignored and the model continues fighting. This ability cannot be used against weapons that inflict Instant Death (those with a Strength double or more the model&apos;s Toughness) or against close combat weapons that allow no Armour Save (such as power fists, power swords, Dreadnought close combat weapons, rending attacks that roll a 6 to hit, etc).</description>
    </rule>
    <rule name="Fleet" id="56d8-9340-2dc6-cd37" hidden="false">
      <description>This special rule is automatically lost by an independent character joining a unit that does not have this special rule, and vice versa.

There are many variants of this rule: Fleet of Foot, Fleet of Claw, even Fleet of Hoof. Title aside, all models with these abilities are treated similarly. In a turn in which models with this rule do not shoot or use a psychic power that replaces shooting, they can move an additional D6&quot; in the Shooting phase, ignoring penalties for difficult terrain.</description>
    </rule>
    <rule name="Furious Charge" id="d9b8-5d21-f44f-80d3" hidden="false">
      <description>Models with this skill are known for the wild ferocity of their charges. In a player turn in which they charged into close combat they and +1 to both there Initiative and Strength characteristics. This ability does not affect sweeping advances.</description>
    </rule>
    <rule name="Hit &amp; Run" id="79a9-ed86-80c5-a94a" hidden="false">
      <description>This special rule is automatically lost by an independent character joining a unit that does not have this special rule, and vice versa.

Models with this ability may choose to leave close combat. Declare this at the end of the Close Combat phase. The unit using the Hit &amp; Run ability must be involved in combat, and will immediately move 3D6&quot; in a straight line in any direction, ignoring the units they are locked with. This move may not be used to move into contact with any enemy models. The break-off move is automatically successful and is not subject to sweeping advance. The enemy can consolidate normally, however.</description>
      <alias>Hit and Run</alias>
    </rule>
    <rule name="Move Through Cover" id="b24c-f56b-5867-01e7" hidden="false">
      <description>Some units of infantry are especially adept  at moving through difficult terrain. Accordingly, roll an extra D6 when rolling to move through difficult terrain. In most circumstances this will mean that they roll 3D6 and pick the dice with the highest score.</description>
    </rule>
    <rule name="Night Vision/Acute Senses" id="7113-3723-c835-726b" hidden="false">
      <description>Warriors in certain parts of the galaxy have developed nocturnal tendencies by fighting in perpetual night, or perhaps carry equipment that gives them such abilities. When the Night Fighting mission special rules are in use, such models may choose to reroll the test to determine how far they can see, but must abide by the new result. Such troops make excellent sentries, and when used in this role, they have a spotting distance equal to double their Initiative rating.

Characters with this rule confer it onto any unit they join, as long as they are part of the unit. Units with this rule confer it onto any characters joining them, as long as they are part of the unit.</description>
      <alias>Night Vision</alias>
      <alias>Acute Senses</alias>
    </rule>
    <rule name="Preferred Enemy" id="b6b9-28e7-4a3f-5334" hidden="false">
      <description>Some warriors are able to predict the moves of the enemies they are used to fighting. In close combat they have developed special techniques that enable them to counter such enemies more effectively. Such troops will always hit their designated preferred enemy on 3+ in close combat, regardless of the comparative Weapon Skills. This ability will not help when attempting to hit independent characters, monstrous creatures or vehicles without a Weapon Skill characteristic.</description>
    </rule>
    <rule name="Scouts" id="ec7c-9e8c-06ac-06b7" hidden="false">
      <description>This special rule is automatically lost by an independent character joining a unit that does not have this special rule, and vice versa.

Scouts are used to reconnoitre ahead and are always used in the vanguard of the army. To represent this, any Scouts in the army may be deployed as the start of the battle, even in scenarios where they could not normally be deployed. For example, if you are using a mission variant with the Escalation special rule, then your Scouts would set up at the start of the battle instead of being places in reserve. In addition to this rule, after both sides have deployed (including Infiltrators), any Scouts may make a &apos;free move&apos;. The move happens before rolling to see who goes first. All of the normal Movement rules apply.

This rule does not apply if the Scouts begin the game embarked on a Transport.</description>
    </rule>
    <rule name="Skilled Rider" id="f5d4-5cda-70b3-469d" hidden="false">
      <description>The model may re-roll the dice for Dangerous Terrain tests.</description>
    </rule>
    <rule name="Slow and Purposeful" id="9af9-5d34-4f8d-95bc" hidden="false">
      <description>Models with this ability always move as if they were moving through difficult terrain (typically rolling two dice and choosing the best as their movement rate). In addition to this, they are always treated as stationary when shooting, and never receive a bonus attack when charging into close combat.</description>
    </rule>
    <rule name="Small Targets" id="80c1-7cd4-63b7-8235" hidden="false">
      <description>Being extremely hard to hit in cover, the unit&apos;s Cover Save is improved by +1 if they are in cover.</description>
    </rule>
    <rule name="Stealth" id="744d-4143-694e-f87f" hidden="false">
      <description>The ability to make maximum use of available cover has saved many a warrior from discovery and death. The unit&apos;s Cover Save is improved by +1 if they are in cover.</description>
    </rule>
    <rule name="Stubborn" id="e74d-09c0-8669-dbfa" hidden="false">
      <description>Stubborn resistance against impossible odds is a feature of some races. Stubborn models function as Fearless, except that they still have to test for pinning as normal.

This special rule is gained by any independent character joining a Stubborn unit. Characters that are stubborn confer the ability onto any unit that they lead, as long as the character is part of the unit.</description>
    </rule>
    <rule name="Swarms" id="3861-5fe9-d4bb-9917" hidden="false">
      <description>Swarms represent creatures that are too puny to be an individual threat, but when operating as a sea of dozens of creatures they can destroy much larger enemies. All Swarms have the Small Targest and Vulnerable to Blasts/Templates special rules.</description>
      <alias>Swarm</alias>
    </rule>
    <rule name="Tank Hunters" id="bb6f-77dc-26ac-51ab" hidden="false">
      <description>Tank Hunters are especially skilled at finding and exploiting weaknesses in the armour of enemy vehicles. They add +1 to their Armour Penetration rolls whenever they hit a vehicle (with any weapon), and automatically pass Morale checks caused by Tank Shock</description>
    </rule>
    <rule name="True Grit" id="e516-c268-82d7-433d" hidden="false">
      <description>Bolters have a &apos;pistol grip&apos;, allowing them to be fired with a single hand. This takes considerable practice and skill and is not normally encouraged. Units noted as having the True Grit skill in their army list, however, have trained how to used their bolters in this manner. In game terms, this means that they may count their bolter as a bolt pistol in close combat, and will therefore be allowed to roll an extra Attack dice as if they have been equipped with an additional pistol or close combat weapon. However, a model using their bolter in this manner does not receive the +1 attack bonus for charging, as a bolter is too unwieldy to be fired with one hand while simultaneously hurling yourself at the enemy. This ability is not usable with combi-weapons of any sort. It is usable with storm bolters, but only by Space Marines of the Grey Knights Chapter for whom this is a long-standing specialisation.</description>
    </rule>
    <rule name="Turbo-Boosters" id="793e-3ba7-feb3-8ad4" hidden="false">
      <description>This special rule is automatically lost by an independent character joining a unit that does not have this special rule, and vice versa.

Units mounted on bikes and jetbikes may utilise turbo-boosters to move at extreme speed. When using their turbo-boosers they may move up to 24&quot; in the movement phase. Controlling their bike at such speeds takes all their concentration and skill, however, so they may not move through difficult terrain, shoot, launch assaults, or move in the Assault phase in the same turn. In the following enemy shooting phase, treat the bike&apos;s Armour Save as being an Invulnerable Save, to represent the difficulty of hitting such fast-moving targets. A unit using turbo-boosters must end its move at least 18&quot; away from its starting position to claim this Invulnerable Save, as it relies on flat-out speed.</description>
    </rule>
    <rule name="Vulnerable to Blast/Template" id="446b-4dd8-38e6-031e" hidden="false">
      <description>Some units are especially vulnerable to blast weapons and template weapons. If the unit is a vehicle, then each hit counts as two hits. If the unit is a non-vehicles, each unsaved wound counts as two wounds rather than one.</description>
    </rule>
    <rule name="Pistol" id="a3a0-726f-f3af-878d" hidden="false">
      <description>A model armed with a pistol can move and shoot once at targets up to 12&quot; away.
If model armed with a pistol remains stationary, it can shoot twice at targets up to 12&quot; away.
Models carrying pistol weapons can fire them once in the Shooting phase and still charge into close combat in the Assault phase, but cannot charge if they remained stationary to fire twice.
Pistols count as regular close combat weapons, allowing a model with another close combat weapon to gain +1 bonus Attack for having two close combat weapons.</description>
    </rule>
    <rule name="Rapid Fire Weapon" id="0dcb-d308-140a-a2f8" hidden="false">
      <description>And infantry model armed with a rapid fire weapon can shoot twice at targets up to 12&quot; away. If an infantry model has not moved, it may instead fire once at targets over 12&quot;, up to its maximum range. Models carrying rapid fire weapons that wish to charge into close combat in the Assault phase may not fire in the Shooting phase.</description>
      <alias>Rapid Fire</alias>
    </rule>
    <rule name="Heavy Weapons" id="b09d-3ee2-fac5-a45c" hidden="false">
      <description>If an infantry unit moves then it cannot shoot heavy weapons - they either move or shoot, but not both (remember that even if the model armed with the heavy weapon doesn&apos;t move, it still can&apos;t fire if other members of its unit move). Infantry units that fire heavy weapons in the Shooting phase may not charge into close combat in the Assault phase, although some rare units may be an exception to this.

Note: vehicles, monstrous creatures, riders on bikes (including jetbikes) and certain other models are capable of moving and firing freely with heavy weapons.</description>
      <alias>Heavy 1</alias>
      <alias>Heavy 2</alias>
      <alias>Heavy 3</alias>
      <alias>Heavy 4</alias>
      <alias>Heavy 5</alias>
      <alias>Heavy 6</alias>
      <alias>Heavy 7</alias>
      <alias>Heavy 8</alias>
    </rule>
    <rule name="Assault Weapon" id="1358-1711-801e-9f98" hidden="false">
      <description>Models carrying assault weapons can fire them in the Shooting phase and still charge into close combat in the Assault phase.</description>
      <alias>Assault 1</alias>
      <alias>Assault 2</alias>
      <alias>Assault 3</alias>
      <alias>Assault 4</alias>
      <alias>Assault 5</alias>
      <alias>Assault 6</alias>
      <alias>Assault 7</alias>
      <alias>Assault 8</alias>
      <alias>Assault X</alias>
      <alias>Assault 2X</alias>
    </rule>
    <rule name="Ordnance" id="5335-0ee8-a82a-b66b" hidden="false">
      <description>A unit firing an Ordnance weapon may not charge into close combat in the Assault phase.

When firing and Ordnance weapon, designate the target and place the large blast marker over it with the following restrictions:
- You may not place the marker so that any of your own models ore vehicles (apart from wrecks) are underneath it.
- You must place the Blast marker so that one enemy model is under the central hole; you cannot place the Blast marker over empty space.

If the hole at the centre of the marker is beyond the weapon&apos;s maximum range or no line of sight exists to the target then the shot is an automatic miss and has no effect. 

If the target is in range and can be seen, roll the Scatter dice and a D6 to see where the shot lands. If the Scatter dice rolls a HIT symbol the shot lands on target. If an arrow is rolled, the marker is shifted in the direction shown by the arrow the number of inches indicated on the D6. If the Ordnance weapon was fired by a moving vehicle then two D6 are rolled and the highest taken to determine the distance the Blast marker scatters. Scatter rolls can take the Blast marker beyond range or out of sight.</description>
    </rule>
    <rule name="Blast" id="206d-9ba2-c383-6b0d" hidden="false">
      <description>When you fire a blast weapon roll to hit as normal; if the shot misses it has no effect. If a hit is scored place the blast marker over the target unit so that one model is under the hole to see how many models are affected.
Models whose bases are partially covered by the marker are hit on a D6 roll of 4 ore more, models whose bases are completely covered are hit automatically. The defending player may remove any casualties inflicted from the unit as a whole, not just from models beneath the blast marker.

If a unit is firing multiple blasts, just place one marker after another, resolving the casualties from each blast before placing the next. Remember, casualties can come from anywhere in the unit, not just under the marker.</description>
      <alias>Large Blast</alias>
    </rule>
    <rule name="Gets Hot" id="45fa-59ad-0b91-07f6" hidden="false">
      <description>When firing a weapon with this rule, if you roll a 1 to hit, the weapon has overheated and injured the model firing it. The model must take an Armour Save and if it suffers a wound (an exception to the normal Casualty Removal rules) - the model with the overheating weapon must take the wound. Weapons on vehicles are not affected by overheating. It is possible for a model to hit with shots that also result in an overheat - the hits are still resolved as normal, even if the firer also falls victim to his own weapon.

If a Gets Hot weapon is firing multiple shots, the chance of it getting hot is even riskier. The chance of suffering wounds is equal to the number of shots being fired, so firing two shots means the weapon gets how on rolls of 1 or 2, while firing 3 shots makes it a ludicrously dangerous 1, 2 or 3.</description>
      <alias>Gets Hot!</alias>
    </rule>
    <rule name="Twin-Linked" id="91b9-40d6-1ecb-6414" hidden="false">
      <description>A Twin-linked weapon may re-roll the dice to hit if it misses; if the second roll is also a miss, you may not reroll the dice again.</description>
    </rule>
    <rule name="Template" id="5ce6-0e3b-6d66-3d3c" hidden="false">
      <description>When firing a Template weapon, instead of rolling to hit, simply place the template so that its narrow end is touching the base of the firing model, and the rest of the template covers  the target unit without covering any friendly models. Against vehicles, the template must be placed to cover as much of the vehicle as possible without also touching a friendly model.

Any models fully or partially under the template are hit automatically. Against vehicles, use the direction of the firing model to determine which armour facing is hit.</description>
    </rule>
    <rule name="Melta" id="80db-0258-ad37-1050" hidden="false">
      <description>Melta weapons roll an extra D6 when making an Armour Penetration roll against vehicles at half range or under.</description>
    </rule>
    <rule name="Barrage" id="7039-be22-012e-3ba7" hidden="false">
      <description>Barrage weapons never have to test to see if they must fire at the closest enemy. Designate the target unit and place the Blast marker over it, with the following restrictions:
- You may not place the marker so that any of your own models ore vehicles (apart from wrecks) are underneath it.
- You must place the Blast marker so that one enemy model is under the central hole; you cannot place the Blast marker over empty space.

If the hole at the centre of the marker is inside the weapon&apos;s minimum range or beyond its maximum, the shot is an automatic miss. If the range is good, proceed to see where it hits, remembering that no line of sight is required. Roll a Scatter dice and a D6 if line of sight exists to the target, or two D6 if not and take the highest. If you roll a HIT on the Scatter dice the shot lands on target. If an arrow is rolled, the marker is shifted int he direction indicated by the arrow a number of inches equal to the D6 roll.

Note that it is possible for a scattering shot to land beyond the weapon&apos;s range, out of sight, off the edge of the table, or even on your own troops. With barrage weapons, the center of the marker is used to determine which direction hits occur from in relation to Cover Saves. Barrage weapons are always pinning weapons as well.</description>
    </rule>
    <rule name="Pinning" id="5804-0b8b-3e5b-2145" hidden="false">
      <description>When the firing of a single enemy unit inflicts casualties with pinning weapons, the target must take a Leadership test to avoid being pinned down. If the unit fails the test it may not move, shoot, assault, or make any other actions in its following turn. A unit may be called upon to make multiple Pinning tests in a single turn. A pinned unit does not have to take a Morale test if it sustains 25% casualties from enemy fire, as the face that it is pinned overrides the Morale test. If assaulted by the enemy, the pinning effect is immediately canceled and the unit will fight normally.</description>
    </rule>
    <rule name="Sniper" id="b9db-9564-f0f3-07a2" hidden="false">
      <description>A sniper weapon hits on a 2 or more regardless of the firing unit&apos;s Ballistic Skill. Sniper hits wound on a roll of 4+ regardless of the victim&apos;s Toughness, and roll 2D6 for armour penetration against Vehicles, but with no additional bonus for Strength. Against vehicles, this represents their chances of successfully hitting exposed crew, vision ports, fuel or ammo storage, etc.</description>
    </rule>
    <rule name="Rending" id="b4f7-137b-d90e-4ac9" hidden="false">
      <description>Any roll to hit of 6 with a rending weapon automatically causes a wound with no Armour Saving throw allowed. Against a vehicle, any Penetration roll of 6 allows a further D6 to be rolled and the result added to the total score. note that only one extra dice is ever rolled, even if the additional roll is also a 6; no further dice are added.</description>
    </rule>
    <rule name="Lance" id="f29b-3adf-622d-b6e1" hidden="false">
      <description>Lance weapons count vehicle Armour Values higher than 12 as 12.</description>
    </rule>
    <rule name="Combi-weapon" id="0c5f-0c8f-a76b-1245" hidden="false">
      <description>A model armed with a combi-weapon may choose which of the weapons it is going to use in the Shooting phase. The bolter may be fired any number of time, but the other weapon may only be fired once per battle. Note that you may not choose to fire both weapons at once.</description>
    </rule>
    <rule name="Tank Shock" id="cf8e-e3db-7b5b-f490" hidden="false"/>
    <rule name="Poisoned" id="391a-7909-abf2-6db3" hidden="false">
      <description>Poisoned weapons do not rely on a comparison of Strength and Toughness to would - they will normally wound on a 4+. Some venoms are so lethal that the merest drop can kill - these wound on a 22+. Weapons with this type of lethal venom are described in the appropriate Codex.</description>
    </rule>
    <rule name="Artillery" id="ed0b-aa06-6eeb-2abf" hidden="false">
      <description>An Artillery unit consists of a number of crewman models and the gun models. The gun models are treated as vehicles with an Armour Rating of 10 on all sides. Any penetrating or glancing hit will destroy a gun - there is no need to roll on the Vehicle Damage tables. If all the crewman models are killed, the guns are immediately removed as well.


Artillery units move in the same way as infantry. They are still slowed by difficult terrain like infantry, but gun models must also take Dangerous Terrain tests when they pass through it. There must be at least one crewman per gun to allow the unit to move. if there are fewer than this, then the unit may not move.


In order to shoot with the guns in an artillery unit, there must be at least one different crewman within 2&quot; of each gun firing. Artillery crewmen may never fire any other weapons as long as the unit still contains any gun models. Unless firing barrage weapons, there must be a line of sight to the target from both a gun model and a crew within 2&quot; of it. Ranges are measured from the gun model.
When template or blast weapons are fired at an Artillery battery, the guns and crew can be hit as normal if they are under the marker/template. When other weapons are fired at the unit, randomise any hits between the crew and the guns themselves (so long as both types are still in the unit ) - roll a D6 and consult the chart below


D6      Result
1-4     Hits the Crew
5-6     Hits a Gun


Artillery units may not declare charges if they still have any gun models with them. In an assault, enemy models attack as normal against the crew&apos;s Weapon Skill - randomise any hits using the able above while both crew and gun models remain engaged. If only gun models are engaged, the enemy will hit automatically and resolve their hits against the gun models. Only engaged crew models fight in an assault.


Artillery units follow the normal rules for Morale for infantry units, with the following exceptions:
If an artillery unit does not have one crewman per remaining gun and is forced to follow back, the gun models without crewmen are destroyed and the rest of the unit falls back as normal.
If an artillery unit is forced to fall back from close combat and the enemy is free to make a sweeping advance, then the artillery unit automatically loses the Initiative roll and is caught and massacred by the victor.</description>
    </rule>
    <rule name="Night Fighting" id="9c36-913a-9e86-39ed" hidden="false">
      <description>When Night Fighting is in effect, after selecting a target, but before a unit fires, a check needs to be made to see if the firing unit can see their target through the darkness. Roll 2D6 and multiply the result by 3, rolling only once per unit. This is the maximum range that any non-barrage we3apon can be fired at. If the shooters have selected a target beyond this range, they lose the right to fire, as they search the darkness for a target that never appears

Normal barrage and ordnance barrage weapons may fire at unseen targets, but if they do, they add an extra D6 to the distance scattered.</description>
      <alias>Fighting at night</alias>
    </rule>
    <rule name="Master-crafted" id="55c5-f2b8-a4a7-b734" hidden="false">
      <description>A master-crafted weapon may re-roll one failed to-hit roll per turn. A master crafted ranged weapon may only re-roll hits for ranged attacks even if the weapon can also be used in close combat (such as pistols).</description>
    </rule>
    <rule name="Vehicle" id="64e7-11c5-972e-451e" hidden="false">
      <description>Standard vehicles can move up to 12&quot; in the Movement phase.
Weapons on vehicles can be Ordnance weapons, Ordnance barrage weapons, Main weapons (Strength 7 or greater) or Defensive weapons (Strength 6 or less).
They can fire all weapons, 1 Ordnance weapon, or 1 Ordnance Barrage weapon after remaining stationary, or can fire 1 main weapon and all defensive weapons, or 1 Ordnance weapon when moving up to 6&quot;.</description>
      <alias>vehicles</alias>
    </rule>
    <rule name="Vehicle Squadron" id="c766-6c30-31f6-fd2a" hidden="false">
      <description>All vehicles in a squadron must move at the same speed. They need to maintain coherency of 4&quot;. 
If any vehicle in the squadron is immobised the other members must maintain coherency or abandon the immobilised vehicle. Any vehicles that are abandoned are counted as destroyed.
A squadron of tanks may perform a Tank Shock.


When shooting, a squadron fires all of its available weapon at a single opposing unit. The number of weapons that can be fired depends on the speed of the vehicle that moved the furthest that turn.
When a Squadron is fired at, any hits are distributed evenly amongst the vehicles, starting with the closest to the attacking unit. No vehicle takes more than one hit until all of the vehicles have each taken one hit. Once all of the hits have been distributed, roll Armour Penetration and make Damage rolls as appropriate. 


When engaged in close combat, enemy units must allocate their attacks between the members of a squadron as if each vehicle was a separate unit. Use the movement of individual vehicles to determine how hard they are to hit.</description>
      <alias>Vehicle Squadrons</alias>
    </rule>
    <rule name="One Shot" id="e2de-8008-3908-c406" hidden="false">
      <description>This weapon may only be used once per battle.</description>
    </rule>
    <rule name="Mixed Armour" id="a3dd-5a9d-6871-ff4e" hidden="false">
      <description>It&apos;s sometimes possible for some units to have models with different Armour Saves, and in these cases the normal casualty removal and Armour Save rules are modified slightly. The attacking player rolls hits and wounds for whichever unit he is attacking with as normal. However, when the player makes his Armour Saves, he must follow this procedure:

1. Count up the number of models that have each type of armour. Only count models that could potentially be casualties.
2. Determine which armour type is in the majority - if it is a tie then the worst type is assumed to be in the majority (it can be assumed that they are picked on by the enemy).
3. Apply the wounding hits to the majority armour type first.
4. If there are still more wounding hits to allocate, you can apply them to any remaining models. It is up to the owning player to decide who will save against which weapon. The only constraint is that the majority armour type must make saves before anyone else does.
5. Incoming hits form &apos;sets&apos;, with a single set being all the wounds caused by the shooting of a single enemy unit, or by enemy models attacking the unit in close combat at a single initiative step. For each &apos;set&apos; of wounds, every model must be allocated one wound before any of them can be allocated a second wound, all models must receive a second wound before any can take a third, and so on. Unsaved wounding hits must be applied against models with the same armour type that was used for the save. If a unit receives more wounds than it has models, then the wounds &apos;wrap around&apos; and affect the majority type again.

If special close combat attacks come into play against a unit with different Armour Saves, it is up to the owning player to decide which models make saves against the special attacks, subject to the rules detailed above. If any model has an Invulnerable Save they are, of course, at liberty to use it against a special attack.</description>
    </rule>
    <rule name="Eternal Warrior" id="37fd-2752-9b25-b99a" hidden="false">
      <description>A model with the Eternal Warrior special rule is immune to Instant Death.</description>
    </rule>
    <rule name="Psyker" id="cfa5-875e-3f68-8b2b" hidden="false">
      <description>In order to use one of his powers, a Psyker must make a Psychic test by rolling equal to or under his Leadership on 2D6. If he fails, then his concentration is broken and he cannot use the power that turn. A pass means the power me be used as described in the special rules for the Psyker in his Codex.
Unless specified otherwise, psychic abilities are subject to the usual Shooting rules, so the Psyker must be able to see the target, all attacks must be directed against a single target unit, etc. While most psychic powers are used instead of shooting, there are a number of psychic abilities that may take effect in other phases.

If a Psyker rolls a 2 or 12 when making their Psychic test, the Psyker is subject to Perils of the Warp - he suffers one automatic hit at Strength 6 with no saves (of any sort) allowed. Note that on a Psychic test roll of a 2 the psychic power still works, even though the Psyker has been attacked or killed.</description>
      <alias>psychic power</alias>
      <alias>psychic test</alias>
    </rule>
    <rule name="Assault Vehicle" id="9b2f-9ece-4171-4f3b" hidden="false">
      <description>Models disembarking from any access point may launch an assault on the turn they do so.</description>
    </rule>
    <rule name="Anti-Aircraft Mount" id="257c-c3b6-2c15-0be7" hidden="false">
      <description>An anti-aircraft mount allows the weapon to shoot at flyers using its normal BS, rather than only hitting on a 6. It allows ordnance and barrage weapons to fire at flyers. For ordnance or barrage weapons roll the Scatter dice, on a &apos;Hit&apos; result the flyer is is, otherwise the shot misses. Do not roll for scatter.

Weapons fitting in anti-aircraft mounts may not fire at all if the vehicle moved, and preclude the use of any other weapons on the vehicle in the turn that they fired, unless they are fitted to a super heavy vehicle.</description>
      <alias>AA Mount</alias>
    </rule>
    <rule name="Super Heavy Vehicle" id="45bc-36e9-08bf-9dd3" hidden="false">
      <alias>War Machine</alias>
    </rule>
  </sharedRules>
  <sharedSelectionEntries>
    <selectionEntry name="Frag Grenades" id="2d20-fb36-3564-0dbe" hidden="false" import="true" type="upgrade">
      <constraints>
        <constraint id="87d4-9645-16c0-1898" field="selections" includeChildSelections="false" scope="parent" shared="true" type="max" value="1"/>
      </constraints>
      <costs>
        <cost name="Points" typeId="4deb-313d-6685-f48b" value="0"/>
      </costs>
      <profiles>
        <profile name="Frag Grenades" id="03d9-ffef-c80f-5272" hidden="false" typeId="57617267656172204974656d23232344415441232323" typeName="Wargear">
          <characteristics>
            <characteristic name="Description" typeId="4465736372697074696f6e23232344415441232323">Models armed with frag grenades that are charging an enemy in or behind cover fight with Initiative 10, so they strike blows simultaneously with the defenders.
Against vehicles, frag grenades roll D6+4 for armour penetration.</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Krak Grenades" id="f95f-36b5-33b7-c0f3" hidden="false" import="true" type="upgrade">
      <constraints>
        <constraint id="3a8a-6839-b4ec-bd8b" field="selections" includeChildSelections="false" scope="parent" shared="true" type="max" value="1"/>
      </constraints>
      <costs>
        <cost name="Points" typeId="4deb-313d-6685-f48b" value="0"/>
      </costs>
      <profiles>
        <profile name="Krak Grenades" id="433d-b280-086f-a17b" hidden="false" typeId="57617267656172204974656d23232344415441232323" typeName="Wargear">
          <characteristics>
            <characteristic name="Description" typeId="4465736372697074696f6e23232344415441232323">Krak grenades are used offensively against vehicles, rolling D6+6 for armour penetration.</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Melta Bombs" id="a1bb-d7bf-d627-b59f" hidden="false" import="true" type="upgrade">
      <constraints>
        <constraint id="a36e-b3be-4080-1373" field="selections" includeChildSelections="false" scope="parent" shared="true" type="max" value="1"/>
      </constraints>
      <costs>
        <cost name="Points" typeId="4deb-313d-6685-f48b" value="0"/>
      </costs>
      <profiles>
        <profile name="Melta Bombs" id="966b-eeda-876f-1104" hidden="false" typeId="57617267656172204974656d23232344415441232323" typeName="Wargear">
          <characteristics>
            <characteristic name="Description" typeId="4465736372697074696f6e23232344415441232323">Melta bombs are used offensively against vehicles, rolling 2D6+8 for armour penetration.</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Bolt Pistol" id="b4d3-5dc3-8317-362c" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Bolt Pistol" id="6533-e935-affc-5af0" hidden="false" targetId="d2c2-d25d-9a03-afc4" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Bolter" id="1fcb-2c8e-4cc2-c033" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Bolter" id="4b38-2e8d-47fe-45a8" hidden="false" targetId="fa34-07ff-1a5d-fe9f" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Tech Servitor" id="4095-6c0a-07cd-25ee" hidden="false" import="true" type="model">
      <costs>
        <cost name="Points" typeId="4deb-313d-6685-f48b" value="10"/>
      </costs>
      <entryLinks>
        <entryLink name="Close Combat Weapon" id="e337-30b5-5418-39b6" hidden="false" import="true" targetId="a936-e00e-833c-89aa" type="selectionEntry">
          <constraints>
            <constraint id="cd7b-80d2-dc9f-c1a3-min" field="selections" includeChildSelections="false" scope="parent" shared="true" type="min" value="1"/>
            <constraint id="cd7b-80d2-dc9f-c1a3-max" field="selections" includeChildSelections="false" scope="parent" shared="true" type="max" value="1"/>
          </constraints>
        </entryLink>
      </entryLinks>
      <profiles>
        <profile name="Tech Servitor" id="26e7-b761-2c45-98ef" hidden="false" typeId="556e697423232344415441232323" typeName="Unit">
          <characteristics>
            <characteristic name="Unit Type" typeId="556e6974205479706523232344415441232323">Infantry</characteristic>
            <characteristic name="WS" typeId="5.753232323444154e+23">3</characteristic>
            <characteristic name="BS" typeId="4.2532323234441546e+23">3</characteristic>
            <characteristic name="S" typeId="5.323232344415441e+21">3</characteristic>
            <characteristic name="T" typeId="5.423232344415441e+21">3</characteristic>
            <characteristic name="W" typeId="5.723232344415441e+21">1</characteristic>
            <characteristic name="I" typeId="4.923232344415441e+21">3</characteristic>
            <characteristic name="A" typeId="4.123232344415441e+21">1</characteristic>
            <characteristic name="LD" typeId="4c4423232344415441232323">8</characteristic>
            <characteristic name="Sv" typeId="5.361766523232344e+27">5+</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Gun Servitor" id="ba0d-c0d5-5228-2ee8" hidden="false" import="true" type="model">
      <costs>
        <cost name="Points" typeId="4deb-313d-6685-f48b" value="10"/>
      </costs>
      <profiles>
        <profile name="Gun Servitor" id="6df0-b3e8-a591-8c1c" hidden="false" typeId="556e697423232344415441232323" typeName="Unit">
          <characteristics>
            <characteristic name="Unit Type" typeId="556e6974205479706523232344415441232323">Infantry</characteristic>
            <characteristic name="WS" typeId="5.753232323444154e+23">3</characteristic>
            <characteristic name="BS" typeId="4.2532323234441546e+23">4</characteristic>
            <characteristic name="S" typeId="5.323232344415441e+21">3</characteristic>
            <characteristic name="T" typeId="5.423232344415441e+21">3</characteristic>
            <characteristic name="W" typeId="5.723232344415441e+21">1</characteristic>
            <characteristic name="I" typeId="4.923232344415441e+21">3</characteristic>
            <characteristic name="A" typeId="4.123232344415441e+21">1</characteristic>
            <characteristic name="LD" typeId="4c4423232344415441232323">8</characteristic>
            <characteristic name="Sv" typeId="5.361766523232344e+27">4+</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <selectionEntryGroups>
        <selectionEntryGroup name="Weapon" id="0250-45f1-de7b-3d7e" flatten="true" hidden="false">
          <constraints>
            <constraint id="9c93-d46e-1a14-6bd4-min" automatic="true" field="selections" includeChildSelections="false" scope="parent" shared="true" type="min" value="1"/>
            <constraint id="9c93-d46e-1a14-6bd4-max" automatic="true" field="selections" includeChildSelections="false" scope="parent" shared="true" type="max" value="1"/>
          </constraints>
          <entryLinks>
            <entryLink name="Heavy Bolter" id="1b9c-36a1-b5cb-134f" hidden="false" import="true" targetId="8303-6167-50de-5177" type="selectionEntry">
              <constraints>
                <constraint id="a0d1-6d57-e835-f5e9" field="selections" includeChildSelections="false" scope="parent" shared="true" type="max" value="1"/>
              </constraints>
              <costs>
                <cost name="Points" typeId="4deb-313d-6685-f48b" value="15"/>
              </costs>
            </entryLink>
            <entryLink name="Multi-melta" id="8d91-bbc8-6141-c3d2" hidden="false" import="true" targetId="0e43-0f25-d320-8e55" type="selectionEntry">
              <constraints>
                <constraint id="fa20-a11c-59cc-35e8" field="selections" includeChildSelections="false" scope="parent" shared="true" type="max" value="1"/>
              </constraints>
              <costs>
                <cost name="Points" typeId="4deb-313d-6685-f48b" value="25"/>
              </costs>
            </entryLink>
            <entryLink name="Plasma Cannon" id="eb28-0152-c569-fa81" hidden="false" import="true" targetId="dafc-5431-7eff-6557" type="selectionEntry">
              <constraints>
                <constraint id="c2ce-a87d-ff5b-ff3a" field="selections" includeChildSelections="true" scope="root-entry" shared="true" type="max" value="1"/>
              </constraints>
              <costs>
                <cost name="Points" typeId="4deb-313d-6685-f48b" value="35"/>
              </costs>
            </entryLink>
          </entryLinks>
        </selectionEntryGroup>
      </selectionEntryGroups>
    </selectionEntry>
    <selectionEntry name="Combat Servitor" id="ee0b-807f-0ab6-d42f" hidden="false" import="true" type="model">
      <costs>
        <cost name="Points" typeId="4deb-313d-6685-f48b" value="25"/>
      </costs>
      <entryLinks>
        <entryLink name="Close Combat Weapon" id="cdd4-cd90-7953-5cd5" hidden="false" import="true" targetId="a936-e00e-833c-89aa" type="selectionEntry">
          <constraints>
            <constraint id="1d90-178f-26d8-e2c7-min" field="selections" includeChildSelections="false" scope="parent" shared="true" type="min" value="1"/>
            <constraint id="1d90-178f-26d8-e2c7-max" field="selections" includeChildSelections="false" scope="parent" shared="true" type="max" value="1"/>
          </constraints>
        </entryLink>
        <entryLink name="Power Fist" id="a6e6-4d5e-b08f-47bd" hidden="false" import="true" targetId="57ca-c59f-1fa9-e1b5" type="selectionEntry">
          <constraints>
            <constraint id="a623-d916-ae4f-b5f2-min" field="selections" includeChildSelections="false" scope="parent" shared="true" type="min" value="1"/>
            <constraint id="a623-d916-ae4f-b5f2-max" field="selections" includeChildSelections="false" scope="parent" shared="true" type="max" value="1"/>
          </constraints>
        </entryLink>
      </entryLinks>
      <profiles>
        <profile name="Combat Servitor" id="ee6e-02a2-6378-e89b" hidden="false" typeId="556e697423232344415441232323" typeName="Unit">
          <characteristics>
            <characteristic name="Unit Type" typeId="556e6974205479706523232344415441232323">Infantry</characteristic>
            <characteristic name="WS" typeId="5.753232323444154e+23">4</characteristic>
            <characteristic name="BS" typeId="4.2532323234441546e+23">3</characteristic>
            <characteristic name="S" typeId="5.323232344415441e+21">3</characteristic>
            <characteristic name="T" typeId="5.423232344415441e+21">3</characteristic>
            <characteristic name="W" typeId="5.723232344415441e+21">1</characteristic>
            <characteristic name="I" typeId="4.923232344415441e+21">3</characteristic>
            <characteristic name="A" typeId="4.123232344415441e+21">1</characteristic>
            <characteristic name="LD" typeId="4c4423232344415441232323">8</characteristic>
            <characteristic name="Sv" typeId="5.361766523232344e+27">3+</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Meltagun" id="58bb-9069-868e-4a79" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Meltagun" id="ba43-14d0-f329-2f28" hidden="false" targetId="4771-d658-dd0f-2ccb" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Multi-melta" id="0e43-0f25-d320-8e55" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Multi-melta" id="3830-4c1a-770e-69e1" hidden="false" targetId="1b9f-dc29-44a8-9237" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Heavy Bolter" id="8303-6167-50de-5177" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Heavy Bolter" id="fd33-fa6a-6f68-17f0" hidden="false" targetId="0e61-328d-62cd-8b59" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Heavy Flamer" id="681f-43e9-f3d6-73e0" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Heavy Flamer" id="e2c5-d6fc-6cbd-aa51" hidden="false" targetId="e21b-79a4-8ddd-8617" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Lascannon" id="3790-c6ab-c5e5-9f0b" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Lascannon" id="1e67-49dc-5367-5789" hidden="false" targetId="a985-b7e4-1396-ce64" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Flamer" id="4036-58f6-4c1e-1965" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Flamer" id="527a-4dae-12fe-ce35" hidden="false" targetId="e329-1729-419b-2bb6" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Missile Launcher" id="fbc2-9198-981d-6d4c" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Missile Launcher (Frag)" id="39ff-1ff0-efd7-e9d2" hidden="false" targetId="2774-242b-9be0-90f2" type="profile"/>
        <infoLink name="Missile Launcher (Krak)" id="dd20-d448-cde7-332b" hidden="false" targetId="db43-c0ed-46f2-39ab" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Autocannon" id="86a2-0312-b8a2-646e" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Autocannon" id="18ca-59f8-b9db-3f02" hidden="false" targetId="7d29-c50b-9499-c31b" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Assault Cannon" id="958c-db25-e5af-3db5" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Assault Cannon" id="959d-6309-5fb6-a8a3" hidden="false" targetId="d4c2-a3d4-540a-5585" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Plasma Gun" id="31e2-9687-ef98-263e" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Plasma Gun" id="23d9-1386-5c5f-5292" hidden="false" targetId="45fb-35fd-3a93-bc60" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Plasma Pistol" id="43f8-0d25-b271-4d6c" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Plasma Pistol" id="ac6a-8fe8-b2ee-93fa" hidden="false" targetId="00e2-6e56-5dfe-e202" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Plasma Cannon" id="dafc-5431-7eff-6557" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Plasma Cannon" id="f756-ec11-b57b-81d5" hidden="false" targetId="91c9-28be-f942-996e" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Sniper Rifle" id="41a4-2ccc-b269-fa51" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Sniper Rifle" id="34d8-66ce-2fa3-655c" hidden="false" targetId="3cbe-c00f-3545-9f41" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Storm Bolter" id="1ed7-654d-07b2-1121" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Storm Bolter" id="83af-483d-e0c9-7122" hidden="false" targetId="d5e9-6e7d-416d-6b6a" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Shotgun" id="477b-10b1-2505-2525" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Shotgun" id="481d-269c-2f0c-a46b" hidden="false" targetId="98b5-a4bd-0fce-affa" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Close Combat Weapon" id="a936-e00e-833c-89aa" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Close Combat Weapon" id="dee0-7d23-8526-bee2" hidden="false" targetId="7b3d-1932-99ef-f5c8" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Combi-melta" id="41b7-2235-bd40-76d3" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Bolter" id="67b9-a4e2-7d2e-148c" hidden="false" targetId="fa34-07ff-1a5d-fe9f" type="profile"/>
        <infoLink name="Meltagun" id="b97f-7570-c4a7-8a14" hidden="false" targetId="4771-d658-dd0f-2ccb" type="profile">
          <modifiers>
            <modifier affects="profiles.Weapon" field="8b10-045a-f593-605e" join=", " type="append" value="One Shot"/>
          </modifiers>
        </infoLink>
        <infoLink name="Combi-weapon" id="53bf-e1b5-ccbf-2ba6" hidden="false" targetId="0c5f-0c8f-a76b-1245" type="rule"/>
      </infoLinks>
      <modifiers>
        <modifier affects="profiles.Weapon" field="name" join=" - " type="prepend" value="Combi-melta"/>
      </modifiers>
    </selectionEntry>
    <selectionEntry name="Combi-plasma" id="a177-d140-7d8c-4d42" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Plasma Gun" id="b751-55b0-312c-96d5" hidden="false" targetId="45fb-35fd-3a93-bc60" type="profile">
          <modifiers>
            <modifier affects="profiles.Weapon" field="8b10-045a-f593-605e" join=", " type="append" value="One Shot"/>
          </modifiers>
        </infoLink>
        <infoLink name="Bolter" id="0dbc-dad3-e73e-48cd" hidden="false" targetId="fa34-07ff-1a5d-fe9f" type="profile"/>
        <infoLink name="Combi-weapon" id="d02a-c3fe-87fd-84bb" hidden="false" targetId="0c5f-0c8f-a76b-1245" type="rule"/>
      </infoLinks>
      <modifiers>
        <modifier affects="profiles.Weapon" field="name" join=" - " type="prepend" value="Combi-plasma"/>
      </modifiers>
    </selectionEntry>
    <selectionEntry name="Combi-flamer" id="1738-0373-fa71-f97b" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Bolter" id="a34b-a269-c08b-f838" hidden="false" targetId="fa34-07ff-1a5d-fe9f" type="profile"/>
        <infoLink name="Flamer" id="eb7d-719f-eb47-d433" hidden="false" targetId="e329-1729-419b-2bb6" type="profile">
          <modifiers>
            <modifier affects="profiles.Weapon" field="8b10-045a-f593-605e" join=", " type="append" value="One Shot"/>
          </modifiers>
        </infoLink>
        <infoLink name="Combi-weapon" id="0ca0-6139-4f75-a6e9" hidden="false" targetId="0c5f-0c8f-a76b-1245" type="rule"/>
      </infoLinks>
      <modifiers>
        <modifier affects="profiles.Weapon" field="name" join=" - " type="prepend" value="Combi-flamer"/>
      </modifiers>
    </selectionEntry>
    <selectionEntry name="Power Weapon" id="b28f-478a-74fb-ec87" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Power Weapon" id="c608-40d7-da6f-6400" hidden="false" targetId="793f-3d45-00ad-58d2" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Thunder Hammer" id="4ce1-2ed4-e3fd-0cb2" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Thunder Hammer" id="5f5c-6610-636c-7294" hidden="false" targetId="d847-93ef-b880-0cc8" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Lightning Claw" id="6b1a-3431-7f5b-300d" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Lightning Claw" id="79e8-394b-73f7-7f3d" hidden="false" targetId="5d6f-948a-8857-ed26" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Power Fist" id="57ca-c59f-1fa9-e1b5" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Power Fist" id="3ef5-d826-43fc-1a1f" hidden="false" targetId="180c-c683-5834-19cc" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Chainfist" id="fe39-28ae-f570-e2f5" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Chainfist" id="9ff4-3ef4-fd55-70cc" hidden="false" targetId="7226-d535-3f43-b157" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Storm Shield" id="8380-823e-3be1-0a52" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Storm Shield" id="4712-2a73-4061-f2b4" hidden="false" targetId="1b55-f520-4b9a-c7e7" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Combat Shield" id="7f9c-fe6e-9acb-7e6d" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Combat Shield" id="f5cb-2453-a22f-d185" hidden="false" targetId="574b-cd9f-a341-fa26" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Force Weapon" id="bede-9886-e7e7-1175" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Force Weapon" id="9a4b-f4fc-2e00-8c2c" hidden="false" targetId="29ac-7e83-0ba0-5fd3" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Hunter-killer Missile" id="ff72-89fa-37d7-07a2" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Hunter-killer Missile" id="3d2e-d9f5-aeab-60f4" hidden="false" targetId="94a2-3ab9-3532-a92b" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Dozer Blade" id="99b1-d567-bb76-a744" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Dozer Blade" id="4072-a6cd-2b47-6853" hidden="false" targetId="c8cb-464f-91d4-d5b2" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Extra Armour" id="7b24-f9b1-5eb5-8bbd" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Extra Armour" id="f2c6-355d-3333-f2ad" hidden="false" targetId="7bef-a5a7-7910-c078" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Power of the Machine Spirit" id="f0dd-db2d-3fc8-f8b7" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Power of the Machine Spirit" id="e68a-f777-8467-de0c" hidden="false" targetId="8ed3-8d46-33de-8edb" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Searchlight" id="f9e5-52e8-1300-2a4a" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Searchlight" id="a119-e126-03af-dd08" hidden="false" targetId="b613-8224-ea11-026e" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Smoke Launchers" id="4aad-7fe7-9acb-1ad4" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Smoke Launchers" id="45cb-566a-604a-5460" hidden="false" targetId="0d56-36b2-c796-d2e6" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Demolisher Cannon" id="5aa6-c70b-fb43-b739" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Demolisher Cannon" id="889e-0361-61e6-b9a9" hidden="false" targetId="7894-54a9-6029-a069" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Dreadnought close combat weapon" id="271b-32b1-d9ab-6fae" hidden="false" import="true" type="upgrade">
      <modifiers>
        <modifier affects="profiles.Walker" field="c10b-81fc-f48d-cb9c" scope="parent" type="append" value="(10)"/>
        <modifier affects="profiles.Walker" arg="(10) (10)" field="c10b-81fc-f48d-cb9c" scope="parent" type="replace" value="(10)"/>
      </modifiers>
      <profiles>
        <profile name="Dreadnought close combat weapon" id="6eff-6aa7-a3a5-34d3" hidden="false" typeId="b729-49a4-4123-cf00" typeName="Melee Weapon">
          <characteristics>
            <characteristic name="Details" typeId="acf3-d214-6e51-29fe">A dreadnought close combat weapon doubles the walker&apos;s Strength in close combat (to a maximum of 10) and ignores Armour Saving throws. A Dreadnought armed with two close combat weapons gains an extra Attack. If one of the weapons is destroyed, the bonus attack is lost. Further Weapon Destroyed results do not affect the walker&apos;s Attacks characteristic, but will prevent it gaining the benefits of Dreadnought close combat weapons if that weapon is destroyed (so, the walker will fight at its base Strength, and wounded enemies will be allowed to take their Armour Saves).</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Plasma Grenades" id="07ae-f0c7-b277-fb93" hidden="false" import="true" type="upgrade">
      <profiles>
        <profile name="Plasma Grenades" id="0ba9-5ab3-c378-61f0" hidden="false" typeId="57617267656172204974656d23232344415441232323" typeName="Wargear">
          <characteristics>
            <characteristic name="Description" typeId="4465736372697074696f6e23232344415441232323">The effects of cover on close combat are negated by plasma grenades, so all fighting is done in standard Initiative order, since the Initiative 10 bonus for cover is lost.
Against vehicles, plasma grenades roll D6+5 for armour penetration.</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Battle Cannon" id="2120-c091-5f03-76a7" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Battle Cannon" id="abb2-142d-4d55-8da7" hidden="false" targetId="ef13-5d02-562d-ef4b" type="profile"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry name="Forge World" id="375a-d331-f8e5-1936" defaultAmount="1" hidden="false" import="true" type="upgrade">
      <categoryLinks>
        <categoryLink name="Force Customization" id="1970-aba1-2bcc-5d16" hidden="false" primary="true" targetId="7466-cf81-3a11-64ab"/>
      </categoryLinks>
      <constraints>
        <constraint id="4026-20f9-8592-2829-max" automatic="false" field="selections" includeChildSelections="false" scope="force" shared="true" type="max" value="1"/>
      </constraints>
      <rules>
        <rule name="Note" id="1cc2-0467-33c8-441d" hidden="false">
          <description>For units that are repeated between an Imperial Armour book and a subsequent Codex, it is recommended to use the Codex version unless agreed upon with your opponent.</description>
        </rule>
      </rules>
    </selectionEntry>
    <selectionEntry name="Anti-Aircraft Mount" id="022e-1119-c5c0-8414" hidden="false" import="true" type="upgrade">
      <constraints>
        <constraint id="713d-5833-9063-9d0a" automatic="true" field="selections" includeChildSelections="false" scope="parent" shared="true" type="max" value="1"/>
      </constraints>
      <costs>
        <cost name="Points" typeId="4deb-313d-6685-f48b" value="10"/>
      </costs>
      <infoLinks>
        <infoLink name="Anti-Aircraft Mount" id="799c-d798-0613-337f" hidden="false" targetId="257c-c3b6-2c15-0be7" type="rule"/>
      </infoLinks>
      <modifiers>
        <modifier affects="profiles.Weapon" field="8b10-045a-f593-605e" join=", " scope="parent" type="append" value="AA Mount"/>
      </modifiers>
    </selectionEntry>
  </sharedSelectionEntries>
</gameSystem>
