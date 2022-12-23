# make a directory
mkdir -p types

for protos in ./schemas/* ; do
	service=$(basename "$protos")
	if [ "$service" != ".gitkeep" ]; then
		echo "> Compiling $service to TypeScript."
		# protocol buffer
		npx protoc \
			--proto_path schemas \
			--ts_out types \
			--ts_opt output_typescript \
			${protos}
		echo "> Compiled $service to TypeScript."
	fi
done

rm -f "index.ts"

for file in ./types/*.ts; do
	name=$(basename "$file" ".ts")
	echo "export * from \"./types/$name\";" >> "index.ts"
done