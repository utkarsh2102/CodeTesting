for dir in $(ls .); do
    cd $dir
    echo "ENTERED ${dir}"
    cp ~/cloud/flask/flask-marshmallow/debian/salsa-ci.yml debian/.
    git add debian/salsa-ci.yml && git commit -m "Add salsa-ci.yml"
    gbp dch -a
    git add debian/changelog && git commit -m "Update d/ch"
    git push origin --all
    echo "MOVING TO NEXT!"
    cd ..
done
