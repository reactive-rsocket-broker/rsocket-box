source <(just --completions bash)

function alirsc() {
  rsc --setupMetadata '{"ip":"127.0.0.1","name":"MockApp","sdk":"SpringBoot/2.3.7","device":"JavaApp"}' --setupMetadataMimeType "APP_INFO" "$@"
}
