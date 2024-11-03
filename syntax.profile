SYN_DIR="${PWD%/*}"

if [[ -z "$NS_SHELL_PID" ]]; then
    . ns init
fi

if [[ -z "$NS_PATH" ]]; then
    export NS_PATH="${SYN_DIR}/ns_bin"
else
    export NS_PATH="{$NS_PATH}:${SYN_DIR}/ns_bin"
fi
export SV_VERBOSE=1
curdir="${PWD}"
sv_dir=$(which sv)
sv_dir=$(dirname "$sv_dir")
cd "${sv_dir}/files"
. "${sv_dir}/sv.profile"
cd "$curdir"



