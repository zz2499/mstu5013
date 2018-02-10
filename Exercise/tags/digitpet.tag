<digitpet>
<h1>TESTTEST</h1>
  <h1> {petname} </h1>
  <h3> How to take care of Hiro? If you click on {feed}, and give it one {feed}, the value of satiety will increase. <br> When satiety >= 100, Hiro will sleep for 2 days.</h3>

<!--Not sure how to associate updateSatiety with sleepy and show the value on the screen-->

  <div class= "small-6 columns" id = "sleepy">
    <button type="button" onclick={updateSatiety}> {feed} </button>
  </div>

  <!-- Haven't figured out how to replace Hiro's image by using hide and show function-->

  <div class = "sleepyState">
  <h2 if={hideSleep}> Hiro overeats and fall into sleep forever.</h2>
  <button onclick={changeImg}> Click to change to a image of sleeping dog. </button>
  </div>


  <script>
      this.petname = "Hi! My name is Hiro.";
      this.feed = "bully stick";

      this.sleepy = 0;
      this.sleepyState = false;

      this.updateSatiety = function () {
            this.sleepy += Math.floor(Math.random() * 2);
            this.doublecheck ();
      };

      this.doublecheck = function () {
        if(this.sleepy < 0  && this.sleepy == 0) {
          this.sleepyState = false;
          this.sleepy = 0;
        }else if(this.sleepy > 100 && this.sleepy == 100) {
          this.sleepyState = true;
          this.sleepy = 100;
        }else if(this.sleepy >0 && this.sleepy < 100) {
          this.sleepyState = false;
        }
      };

      this.hideSleep = false;
      this.changeImg = function () {
           this.hideSleep = !this.hideSleep;
      };

  </script>

  <style>
    :scope p {
      color: #000;
      padding: 15px;
    }

  </style>
</digitpet>
