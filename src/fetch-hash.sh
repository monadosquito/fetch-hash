noFlagOrOptErr () {
    echo "$1 flag or option undefined"
}

args=()
pinPath=chr/pin.nix
while (( $# > 0 ))
do
    case $1 in
        -p | --pin-path)
            pinPath=$2
            shift
            shift
            ;;
        -* | --*)
            echo "$noFlagOrOptErr"
            exit 
            ;;
        *)
            args+=($1)
            shift
            ;;
    esac
done
set -- "${args[@]}"

ownerName=$1
repoPath=$2

cd $repoPath
hash=$(git rev-parse @)
cd - > /dev/null
repoName=${repoPath##*/}
sed --in-place --regexp-extended \
    "s|(https://github.com/$ownerName/$repoName/archive/).*(.tar.gz)|\1$hash\2|" \
    $pinPath
