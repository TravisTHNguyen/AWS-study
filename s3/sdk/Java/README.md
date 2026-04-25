mvn -B archetype:generate \
 -DarchetypeGroupId=software.amazon.awssdk \
 -DarchetypeArtifactId=archetype-lambda -Dservice=s3 -Dregion=US_WEST_2 \
 -DarchetypeVersion=2.42.41\
 -DgroupId=com.example.myapp \
 -DartifactId=myapp
 
 #setup aws projects for Java (maven) ^^^
 # https://central.sonatype.com/artifact/software.amazon.awssdk/archetype-lambda
