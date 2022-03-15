if [ -z ${FILE_SOURCING_SCRIPT_DEFINED+x} ]; then
export FILE_SOURCING_SCRIPT_DEFINED=1

    function source_file_if_exists() {
        local file="$1"
        [[ -f "$file" && -r "$file" ]] && source "$file"
    }
    alias sofie='source_file_if_exists '

    function source_file_if_executable() {
        local file="$1"; shift;
        [[ -f "$file" && -r "$file" && -x "$file" ]] && source "$file"
    }
    alias sofix='source_file_if_executable '

    function source_file_if_not_executable() {
        local file="$1"; shift;
        [[ -f "$file" && -r "$file" && ! -x "$file" ]] && source "$file"
    }
    alias sofine='source_file_if_not_executable '

    function source_files_in_dir() {
        local dir="$1"; shift;
        if [ -d "$dir" && ! -z "$dir" ]; then
            for file in "${dir}*"; do
                sofie "$file"
            done
        fi
    }
    alias sofid='source_all_files_in_dir '

fi

