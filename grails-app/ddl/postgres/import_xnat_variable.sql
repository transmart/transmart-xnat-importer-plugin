--
-- Name: import_xnat_variable; Type: TABLE; Schema: searchapp; Owner: -
--
CREATE TABLE searchapp.import_xnat_variable (
    id bigint NOT NULL,
    configuration_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    datatype character varying(255) NOT NULL,
    url character varying(255) NOT NULL
);
ALTER TABLE searchapp.import_xnat_variable OWNER TO searchapp;
GRANT ALL ON TABLE searchapp.import_xnat_variable TO searchapp;

--
-- Name: pk_import_xnat_var; Type: CONSTRAINT; Schema: searchapp; Owner: -
--
ALTER TABLE ONLY searchapp.import_xnat_variable
    ADD CONSTRAINT pk_import_xnat_variable PRIMARY KEY (id);

--
-- Name: fk_import_xnat_var_to_config; Type: FK CONSTRAINT; Schema: searchapp; Owner: -
--
ALTER TABLE ONLY searchapp.import_xnat_variable
    ADD CONSTRAINT fk_import_xnat_var_to_config FOREIGN KEY (configuration_id) REFERENCES searchapp.import_xnat_configuration(id);

;
